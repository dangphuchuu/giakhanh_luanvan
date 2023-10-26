<div class="modal fade" id="products_create" tabindex="-1" role="dialog"
    aria-labelledby="products_createTitle" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="products_createTitle">Create Product</h5>
                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                <i data-feather="x"></i>
                </button>
            </div>
            <form action="admin/products/create" method="post" enctype="multipart/form-data">
                @csrf
                <div class="modal-body">
                    <label>Category: </label>
                    <div class="form-group">
                        <select name="cat_id" class="form-control form-control-primary category" >
                            @foreach($categories as $cat)
                            <option value="{{$cat->id}}">{{$cat->name}}</option>
                            @endforeach
                        </select>
                    </div>

                    <label>Subcategory: </label>
                    <div class="form-group">
                        <select name="sub_id" class="form-control form-control-primary subcategory" >
                            @foreach($subcategories as $sub)
                            <option value="{{$sub->id}}">{{$sub->name}}</option>
                            @endforeach
                        </select>
                    </div>

                    <label>Brands: </label>
                    <div class="form-group">
                        <select name="brands_id" class="form-control form-control-primary" id="brands">
                            @foreach($brands as $brand)
                            <option value="{{$brand->id}}">{{$brand->name}}</option>
                            @endforeach
                        </select>
                    </div>

                    <label>Name: </label>
                    <div class="form-group">
                        <input type="text" placeholder="Type...." class="form-control" name="name" required>
                    </div>

                    <label>Image: </label>
                    <div class="form-group file-uploader">
                        <input type="file" name="Image" class="form-control image-products">
                        <img style="width: 400px" src="" class="img_products d-none" alt="user1">
                    </div>

                    <label>Image Libraries: </label>
                    <div class="form-group file-uploader-library">
                        <input type="file" name="Productslibrary[]" class="form-control image-products-library" multiple>
                        <img style="width: 400px" src="" class="img_products_library d-none" alt="user1">
                    </div>

                    <label>Video: </label>
                    <div class="form-group">
                        <input type="text" placeholder="https://www.youtube.com/watch?v=" class="form-control" name="youtube_path">
                    </div>

                    <label>Price: </label>
                    <div class="form-group">
                        <input class="form-control" type="number" name="price"/>
                    </div>
                    <input type="checkbox" class="checkPrice" name="changeprice">
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