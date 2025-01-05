<div class="modal fade text-left" id="staff_create" tabindex="-1" role="dialog" aria-labelledby="staff_create" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staff_create">{{__("Create")}} {{__("Staff")}}</h5>
                <button type="button" class="close rounded-pill" data-bs-dismiss="modal" aria-label="Close">
                    <i data-feather="x"></i>
                </button>
            </div>
            <form action="admin/staff/create" method="post">
                @csrf
                <div class="modal-body">
                    <label>{{__("Last Name")}}: </label>
                    <div class="form-group">
                        <input type="text" placeholder="{{__('Type')}}...." value="" class="form-control" name="lastname">
                    </div>
                    <label>{{__("First Name")}}: </label>
                    <div class="form-group">
                        <input type="text" placeholder="{{__('Type')}}...." value="" class="form-control" name="firstname">
                    </div>
                    <label>{{__("Username")}}: </label>
                    <div class="form-group">
                        <input type="text" placeholder="{{__('Type')}}...." value="" class="form-control" name="username">
                    </div>
                    <label>{{__("Phone")}}: </label>
                    <div class="form-group">
                        <input type="number" placeholder="{{__('Type')}}...." value="" class="form-control" name="phone">
                    </div>
                    <label>{{__("Address")}}: </label>
                    <div class="form-group">
                        <input type="text" placeholder="{{__('Type')}}...." value="" class="form-control" name="address">
                    </div>
                    <label>{{__("District")}}: </label>
                    <div class="form-group">
                        <input type="text" placeholder="{{__('Type')}}...." value="" class="form-control" name="district">
                    </div>
                    <label>{{__("City")}}: </label>
                    <div class="form-group">
                        <input type="text" placeholder="{{__('Type')}}...." value="" class="form-control" name="city">
                    </div>
                    <label>{{__("Password")}}: </label>
                    <div class="form-group">
                        <input type="password" placeholder="{{__('Type')}}...." name="password" class="password form-control">
                    </div>
                    <div class="form-group">
                        <input type="password" placeholder="{{__('Type')}}...." name="repassword" class="password form-control">
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