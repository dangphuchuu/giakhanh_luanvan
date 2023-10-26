<div class="modal fade text-left" id="subcategories_create" tabindex="-1" role="dialog" aria-labelledby="subcategories_create"
                        aria-hidden="true">
                            <div class="modal-dialog modal-dialog-scrollable" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="subcategories_create">Create Subcategories</h5>
                                        <button type="button" class="close rounded-pill" data-bs-dismiss="modal" aria-label="Close">
                                            <i data-feather="x"></i>
                                        </button>
                                    </div>
                                    <form action="admin/subcategories/create" method="post">
                                        @csrf
                                    <div class="modal-body">
                                        <label>Categories: </label>
                                        <div class="form-group">
                                            <select name="cat_id" class="form-control form-control-primary">
                                                @foreach($categories as $cat)
                                                <option value="{{$cat->id}}">{{$cat->name}}</option>
                                                @endforeach
                                            </select>
                                        </div>

                                        <label>Name: </label>
                                        <div class="form-group">
                                        <input type="text" placeholder="Type...." class="form-control" name="name" required>
                                        </div>
                                        
                                    </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn" data-bs-dismiss="modal">
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