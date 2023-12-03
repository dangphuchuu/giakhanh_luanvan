<div class="modal fade text-left" id="news_edit{{$new->id}}" tabindex="-1" role="dialog" aria-labelledby="news_edit"
aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="news_edit">{{__("Edit")}} {{__("Banners Collection")}}</h5>
                <button type="button" class="close rounded-pill" data-bs-dismiss="modal" aria-label="Close">
                    <i data-feather="x"></i>
                </button>
            </div>
            <form action="admin/news/edit/{{$new->id}}" method="post" enctype="multipart/form-data">
                @csrf
                <div class="modal-body">
                    <label>{{__("Name")}}: </label>
                    <div class="form-group">
                        <input type="text" placeholder="{{__('Type')}}...." value="{{$new->name}}" class="form-control" name="name" >
                    </div>

                    <label>{{__("Image")}}: </label>
                    <input type="file" name="Image" class="form-control image-news">
                    <div class="form-group file-uploader">
                        @if(strstr($new->image,"https") == "")
                        <img style="width: 400px" class="img_news" src="https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{ $new->image }}.jpg" alt="">
                        @else
                        <img style="width: 400px" class="img_news" src="{{$new->image}}" alt="">
                        @endif
                    </div>

                    <label>{{__("Link")}}: </label>
                    <div class="form-group">
                        <input type="text" placeholder="{{__('Type')}}...." value="{{$new->link}}" class="form-control" name="link" >
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