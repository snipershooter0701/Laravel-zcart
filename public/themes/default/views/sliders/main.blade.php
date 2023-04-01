<section id="primary-slider">
    <div class="banner">
        <div class="banner__inner">
            <div class="banner__slider">
                @foreach($sliders as $slider)
                    <div class="banner__content">
                        <div class="banner__content-img" style="background-image: url({{ get_storage_file_url($slider['feature_image']['path'], 'full') }})">
                        </div>
                        @if($slider['sub_title'] || $slider['title'] || $slider['description'])
                            <div class="banner__content-{{$slider['text_position'] == 'right' ? 'left' : 'right'}}"></div>

                            <div class="banner__content-{{$slider['text_position'] ?? 'right'}}">
                                <div class="banner__content-sub-title">
                                    <h3 style="color: {{ $slider['sub_title_color'] }}">{!! $slider['sub_title']!!}</h3>
                                </div>
                                <div class="banner__content-title">
                                    <h1 style="color: {{ $slider['title_color'] }}">{!! $slider['title']!!}</h1>
                                </div>
                                <div class="banner__content-text">
                                   <p style="color: {{ $slider['description_color'] }}">{!! $slider['description'] !!}</p>
                                </div>
                                @if(! empty($slider['link']))
                                    <div class="banner__content-btn">
                                        <a href="{{ $slider['link'] }}">{{trans('theme.shop_now')}}</a>
                                    </div>
                                @endif
                            </div>
                        @endif
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</section>
