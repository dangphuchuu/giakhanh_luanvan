<div class="modal fade text-left" id="banners_create" tabindex="-1" role="dialog" aria-labelledby="banners_create"
    aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="banners_create">{{__("Create")}} {{__("Banners")}}</h5>
                    <button type="button" class="close rounded-pill" data-bs-dismiss="modal" aria-label="Close">
                        <i data-feather="x"></i>
                    </button>
                </div>
                <form action="admin/banners/create" method="post" enctype="multipart/form-data">
                    @csrf
                <div class="modal-body">
                    <label>{{__("Image")}}: </label>
                    <div class="form-group file-uploader">
                        <input type="file" name="Image[]" class="form-control image-banners" multiple>
                        <img style="width: 400px" src="" class="img_banners d-none" alt="user1">
                    </div>
                </div>
                    <div class="modal-footer">
                        <button type="button" class="btn" data-bs-dismiss="modal">
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