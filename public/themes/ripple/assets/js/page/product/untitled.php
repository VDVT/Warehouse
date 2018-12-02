<div class="container">
        <div class="p-y-6">
              <!-- Nav tabs -->
                <ul class="nav nav-tabs nav-justified" role="tablist">
                    <div class="slider"></div>
                    @foreach($product_categories as $category)
                        <li class="nav-item">
                            <a class="nav-link active" id="category-tab-{{ $category->id }}" data-toggle="tab" href="#tab-{{ $category->id }}" role="tab" aria-controls="control-{{ $category->id }}" aria-selected="true"><i class="fas fa-home"></i> {{ $category->name }}</a>
                        </li>
                    @endforeach
                    <!-- <li class="nav-item">
                        <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true"><i class="fas fa-home"></i> Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false"><i class="fas fa-id-card"></i> Profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false"><i class="fas fa-map-signs"></i> Contact</a>
                     </li>
                    <li class="nav-item">
                        <a class="nav-link" id="setting-tab" data-toggle="tab" href="#setting" role="tab" aria-controls="setting" aria-selected="false"><i class="fas fa-cogs"></i> Settings</a>
                    </li> -->
                </ul>

              <!-- Tab panes -->
                <div class="tab-content">

                    @foreach($product_categories as $key => $category)
                        <div class="tab-pane fade show active" id="tab-{{ $category->id }}" role="tabpanel" aria-labelledby="category-tab-{{ $category->id }}">
                            <div class="row product-wrapper">
                                @foreach($product_categories as $product_category)
                                    <div class="col-md-3 col-sm-6">
                                        <div class="product-item">
                                            <div class="card-ratio-1-1">
                                                <img class="content" src="{{ $product_category->image }}" alt="{{ $product_category->name }}"/>
                                            </div>
                                            <div class="product-title">{{ $product_category->name }}</div>
                                            <div class="product-backdrop">
                                                <a href="{{ route('public.product_category.details', $product_category->slug) }}" class="btn btn-outline-custom-i btn-round">Detail <i class="fas fa-long-arrow-alt-right"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    @endforeach

                </div>
        </div>
    </div>