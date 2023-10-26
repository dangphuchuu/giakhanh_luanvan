<div class="modal fade" id="products_edit{{$pro->id}}" tabindex="-1" role="dialog"
    aria-labelledby="products_editTitle" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="products_editTitle">Edit Product</h5>
                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                <i data-feather="x"></i>
                </button>
            </div>
            <form action="admin/products/edit" method="post" enctype="multipart/form-data">
                @csrf
                <div class="modal-body">
                    <label>Category: </label>
                    <div class="form-group">
                        <select name="cat_id" class="form-control form-control-primary" id="category">
                            @foreach($categories as $cat)
                            <option
                                @if($pro->cat_id == $cat->id)
                                selected 
                                @endif
                            value="{{$cat->id}}">{{$cat->name}}</option>
                            @endforeach
                        </select>
                    </div>

                    <label>Subcategory: </label>
                    <div class="form-group">
                        <select name="sub_id" class="form-control form-control-primary" id="subcategory">
                            @foreach($subcategories as $sub)
                            <option 
                                @if($pro->sub_id == $sub->id)
                                selected
                                @endif
                            value="{{$sub->id}}">{{$sub->name}}</option>
                            @endforeach
                        </select>
                    </div>

                    <label>Brands: </label>
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

                    <label>Name: </label>
                    <div class="form-group">
                        <input type="text" value="{{$pro->name}}" class="form-control" name="name" required>
                    </div>

                    <label>Image: </label>
                    <div class="form-group file-uploader">
                        <input type="file" name="Image" class="form-control image-products">
                        @if(strstr($pro->image,"https") == "")
                        <img style="width: 400px" class="img_products" src="https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{ $pro->image }}.jpg" alt="">
                        @else
                        <img style="width: 400px" class="img_products" src="{{$pro->image}}" alt="">
                        @endif
                    </div>

                    <label>Image Libraries: </label>
                    <input type="file" name="Productslibrary[]" class="form-control image-products-library" multiple>
                    <div class="form-group file-uploader-library">
                        @foreach($pro->Productslibrary as $library)
                            @if(strstr($library->image_library,"https") == "")
                            <img style="width: 400px" class="img_products_library mb-2" src="https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{ $library->image_library }}.jpg" alt="">
                            <a href="javascript:void(0)" class="btn text-danger delete-image">X</a> 
                            @else
                                <img style="width: 400px" class="img_products_library mb-2" src="{{$library->image_library}}" alt="">
                            @endif
                        @endforeach
                    </div>

                    <label>Video: </label>
                    <div class="form-group">
                        <input type="text" placeholder="https://www.youtube.com/watch?v=" class="form-control" name="youtube_path">
                    </div>

                    <label>Price: </label>
                    <div class="form-group">
                        <input class="form-control" type="number" name="price"/>
                    </div>
                    <input type="checkbox" id="checkPrice" name="changeprice">
                    <label>New Price: </label>
                    <div class="form-group">
                        <input class="new_price form-control" type="number" name="price_new" disabled/>
                    </div>

                    <label>Content: </label>
                    <div class="form-group">
                        <textarea class="form-control" name="content" id="content"></textarea>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-light-secondary" data-bs-dismiss="modal">
                    <i class="bx bx-x d-block d-sm-none"></i>
                    <span class="d-none d-sm-block">Close</span>
                    </button>
                    <button type="submit" class="btn btn-primary ml-1" data-bs-dismiss="modal">
                    <i class="bx bx-check d-block d-sm-none"></i>
                    <span class="d-none d-sm-block">Accept</span>
                    </button>
                </div>

            </form>
        </div>
    </div>
</div>