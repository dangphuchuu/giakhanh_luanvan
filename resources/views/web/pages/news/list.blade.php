@extends('web.layout.index')
@section('css')
<link href="web_assets/css/blog.css" rel="stylesheet">
@endsection
@section('content')
<main class="bg_gray">
    <div class="container margin_30">
        <div class="page_header">
            <div class="breadcrumbs">
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Category</a></li>
                    <li>Page active</li>
                </ul>
            </div>
            <h1>{{__("News")}}</h1>
        </div>
        <!-- /page_header -->
        <div class="row">
            <div class="col-lg-9">
                <div class="widget search_blog d-block d-sm-block d-md-block d-lg-none">
                    <div class="form-group">
                        <input type="text" name="search" id="search" class="form-control" placeholder="Search..">
                        <button type="submit"><i class="ti-search"></i></button>
                    </div>
                </div>
                <!-- /widget -->
                <div class="row">
                    @foreach($news as $new)
                    <div class="col-md-6">
                        <article class="blog">
                            <figure>
                                <a href="blog-post.html"><img src="https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{$new->image}}.jpg" alt="">
                                    <div class="preview"><span>Read more</span></div>
                                </a>
                            </figure>
                            <div class="post_info">
                                <small>{{__("News")}} - {{$new->updated_at->format('d.m.Y')}}</small>
                                <h2><a href="blog-post.html">Ea exerci option hendrerit</a></h2>
                                <p>Quodsi sanctus pro eu, ne audire scripserit quo. Vel an enim offendit salutandi, in
                                    eos quod omnes epicurei, ex veri qualisque scriptorem mei.</p>
                                <ul>
                                    <li>
                                        <div class="thumb"><img src="img/avatar.jpg" alt=""></div> Admin
                                    </li>
                                    <li><i class="ti-comment"></i>20</li>
                                </ul>
                            </div>
                        </article>
                        <!-- /article -->
                    </div>
                    @endforeach
                    <!-- /col -->
                </div>
                <!-- /row -->

                <div class="pagination__wrapper no_border add_bottom_30">
                    <ul class="pagination">
                        <li><a href="#0" class="prev" title="previous page">&#10094;</a></li>
                        <li>
                            <a href="#0" class="active">1</a>
                        </li>
                        <li>
                            <a href="#0">2</a>
                        </li>
                        <li>
                            <a href="#0">3</a>
                        </li>
                        <li>
                            <a href="#0">4</a>
                        </li>
                        <li><a href="#0" class="next" title="next page">&#10095;</a></li>
                    </ul>
                </div>
                <!-- /pagination -->

            </div>
            <!-- /col -->
            <aside class="col-lg-3">
                <div class="widget search_blog">
                    <div class="form-group">
                        <input type="text" name="search" id="search" class="form-control" placeholder="Search..">
                        <button type="submit"><i class="ti-search"></i></button>
                    </div>
                </div>
                <!-- /widget -->
                <div class="widget">
                    <div class="widget-title">
                        <h4>{{__("Latest News")}}</h4>
                    </div>
                    <ul class="comments-list">
                        @foreach($news->take(4) as $new)
                        <li>
                            <div class="alignleft">
                                <a href="/news/{{$new->id}}"><img
                                        src="https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{$new->image}}.jpg"
                                        alt=""></a>
                            </div>
                            <small>{{__("News")}} - {{$new->updated_at->format('d.m.Y')}}</small>
                            <h3><a href="/news/{{$new->id}}" title="">{{$new->title}}</a></h3>
                        </li>
                        @endforeach
                    </ul>
                </div>
                <!-- /widget -->
                <div class="widget">
                    <div class="widget-title">
                        <h4>{{__("Categories")}}</h4>
                    </div>
                    <ul class="cats">
                        @foreach($categories as $category)
                        <li><a href="#">{{$category->name}} <span>({{$category->Subcategories->count()}})</span></a>
                        </li>
                        @endforeach
                    </ul>
                </div>
            </aside>
            <!-- /aside -->
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</main>
@endsection