<div class="modal fade text-left" id="reviews" tabindex="-1" role="dialog" aria-labelledby="reviews" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg  modal-dialog-scrollable" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="reviews">{{__("Reviews")}}</h5>
                <button type="button" class="close rounded-pill" data-bs-dismiss="modal" aria-label="Close">
                    <i data-feather="x"></i>
                </button>
            </div>
            <form action="/" method="POST">
                @csrf
                <div class="modal-body">
                    <!-- Modal body -->
                    <div class="modal-body">
                        <div class="container margin_60_35">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <div class="write_review">
                                        <h1>{{__("Write a review for")}} Armor Air X Fear</h1>
                                        <div class="rating_submit">
                                            <div class="form-group">
                                                <label class="d-block">{{__("Overall rating")}}</label>
                                                <span class="rating mb-0">
                                                    <input type="radio" class="rating-input" id="5_star" name="rating-input" value="5 Stars"><label for="5_star" class="rating-star"></label>
                                                    <input type="radio" class="rating-input" id="4_star" name="rating-input" value="4 Stars"><label for="4_star" class="rating-star"></label>
                                                    <input type="radio" class="rating-input" id="3_star" name="rating-input" value="3 Stars"><label for="3_star" class="rating-star"></label>
                                                    <input type="radio" class="rating-input" id="2_star" name="rating-input" value="2 Stars"><label for="2_star" class="rating-star"></label>
                                                    <input type="radio" class="rating-input" id="1_star" name="rating-input" value="1 Star"><label for="1_star" class="rating-star"></label>
                                                </span>
                                            </div>
                                        </div>
                                        <!-- /rating_submit -->
                                        <div class="form-group">
                                            <label>{{__("Your review")}}</label>
                                            <textarea class="form-control" style="height: 180px;" placeholder="{{__('Write your review to help others learn about this online business.')}}"></textarea>
                                        </div>
                                        <button type="submit" class="btn_1">{{__("Submit review")}}</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>