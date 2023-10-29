<div class="modal fade " id="products_edit{{$pro->id}}" tabindex="-1" role="dialog"
    aria-labelledby="products_editTitle" aria-hidden="true">
    <div class="modal-dialog " role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="products_editTitle">{{__("Edit")}} {{__("Products")}}</h5>
                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                <i data-feather="x"></i>
                </button>
            </div>
            <form action="admin/products/edit/{{$pro->id}}" method="post" enctype="multipart/form-data">
                @csrf
                <div class="modal-body">
                    <label>{{__("Categories")}}: </label>
                    <div class="form-group">
                        <select name="cat_id" class="form-control form-control-primary category_edit" >
                            @foreach($categories as $cat)
                            <option
                                @if($pro->cat_id == $cat->id)
                                selected 
                                @endif
                            value="{{$cat->id}}">{{$cat->name}}</option>
                            @endforeach
                        </select>
                    </div>

                    <label>{{__("SubCategories")}}: </label>
                    <div class="form-group">
                        <select name="sub_id" class="form-control form-control-primary subcategory_edit" >
                            @foreach($subcategories as $sub)
                            <option 
                                @if($pro->sub_id == $sub->id)
                                selected
                                @endif
                            value="{{$sub->id}}">{{$sub->name}}</option>
                            @endforeach
                        </select>
                    </div>

                    <label>{{__("Brands")}}: </label>
                    <div class="form-group">
                        <select name="brands_id" class="form-control form-control-primary" id="brands">
                            @foreach($brands as $brand)
                            <option 
                                @if($pro->brands_id == $brand->id)
                                selected
                                @endif
                            value="{{$brand->id}}">{{$brand->name}}</option>
                            @endforeach
                        </select>
                    </div>

                    <label>{{__("Name")}}: </label>
                    <div class="form-group">
                        <input type="text" value="{{$pro->name}}" class="form-control" name="name">
                    </div>

                    <label>{{__("Image")}}: </label>
                    <div class="form-group file-uploader">
                        <input type="file" name="Image" class="form-control image-products">
                        @if(strstr($pro->image,"https") == "")
                        <img style="width: 400px" class="img_products" src="https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{ $pro->image }}.jpg" alt="">
                        @else
                        <img style="width: 400px" class="img_products" src="{{$pro->image}}" alt="">
                        @endif
                    </div>

                    <label>{{__("Image Libraries")}}: </label>
                    <input type="file" name="Productslibrary[]" class="form-control image-products-library" multiple>
                    <div class="form-group file-uploader-library">
                        @foreach($pro->Productslibrary as $library)
                            @if(strstr($library->image_library,"https") == "")
                            <div>
                                <img style="width: 400px" class="img_products_library mb-2" src="https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{ $library->image_library }}.jpg" alt="">
                                <a href="javascript:void(0)" data-url="{{ url('admin/products/deleteimages', $library->id ) }}" class="btn text-danger delete-image">X</a> 
                            </div>
                            @else
                            <div>
                                <img style="width: 400px" class="img_products_library mb-2" src="{{$library->image_library}}" alt="">
                                <a href="javascript:void(0)" data-url="{{ url('admin/products/deleteimages', $library->id ) }}" class="btn text-danger delete-image">X</a> 
                            </div>
                            @endif
                        @endforeach
                    </div>

                    <label>Video: </label>
                    <div class="form-group">
                        <input type="text" placeholder="https://www.youtube.com/watch?v=" value="{{$pro->youtube_path}}" class="form-control" name="youtube_path">
                        <iframe style="height: 350px;" width="470px" src="@if(isset($pro->youtube_path)) 
                                            https://www.youtube.com/embed/{{$pro->youtube_path}}
                                            @endif" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>

                    <label>{{__("Price")}}: </label>
                    <div class="form-group">
                        <input class="form-control" type="number" name="price" value="{{$pro->price}}"/>
                    </div>
                    <label>{{__("New Price")}}: </label>
                    <input type="checkbox" class="checkPrice_edit" name="changeprice">
                    <div class="form-group">
                        <input class="new_price_edit form-control" type="number" name="price_new" value="{{$pro->price_new}}" disabled/>
                    </div>

                    <label>{{__("Content")}}: </label>
                    <div class="form-group">
                        <textarea class="content_edit form-control" name="content" >{{$pro->content}}</textarea>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-light-secondary" data-bs-dismiss="modal">
                    <i class="bx bx-x d-block d-sm-none"></i>
                    <span class="d-none d-sm-block">{{__("Close")}}</span>
                    </button>
                    <button type="submit" class="btn btn-primary ml-1" data-bs-dismiss="modal">
                    <i class="bx bx-check d-block d-sm-none"></i>
                    <span class="d-none d-sm-block">{{__("Accept")}}</span>
                    </button>
                </div>

            </form>
        </div>
    </div>
</div>