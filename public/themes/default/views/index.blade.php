@extends('theme::layouts.main')

@section('content')
    <style type="text/css">
        section {
          margin: 0 0 35px 0;
        }
        @media screen and (max-width: 991px) {
          section {
            margin: 0 0 30px 0;
          }
        }
    </style>
    <!-- MAIN SLIDER -->
    @include('theme::sliders.old')
    {{-- @include('theme::sliders.main') --}}

    <!-- banner grp one -->
    @if(! empty($banners['group_1']))
        @include('theme::sections.banners', ['banners' => $banners['group_1']])
    @endif

    <!-- Flash deal start -->
    @include('theme::sections.flash_deals')

    <!-- Trending start -->
    @include('theme::sections.trending_now')

    <!-- banner grp two -->
    @if(! empty($banners['group_2']))
        @include('theme::sections.banners', ['banners' => $banners['group_2']])
    @endif

   <!-- Deal of Day start -->
    @include('theme::sections.deal_of_the_day')

    <!-- banner grp three -->
    @if(! empty($banners['group_3']))
        @include('theme::sections.banners', ['banners' => $banners['group_3']])
    @endif

    <!-- Featured category stat -->
     @include('theme::sections.featured_category')
    <!-- Featured category end -->

    <!-- Popular Product type start -->
    @include('theme::sections.popular')
    <!-- Product type end -->

    <!-- banner grp three -->
    @if(! empty($banners['group_4']))
        @include('theme::sections.banners', ['banners' => $banners['group_4']])
    @endif

    <!-- Bundle start -->
    {{--@include('theme::sections.bundle_offer')--}}
    <!-- Bundle end -->

    <!-- feature-brand start -->
    @include('theme::sections.featured_brands')
    <!-- feature-brand end -->

    <!-- Recently Added -->
    @include('theme::sections.recently_added')
    <!-- neckbands end -->

    <!-- banner grp four -->
    @if(! empty($banners['group_5']))
        @include('theme::sections.banners', ['banners' => $banners['group_5']])
    @endif

    <!-- Additional Items -->
    <!--@include('theme::sections.additional_items')-->

    <!-- banner grp four -->
    @if(! empty($banners['group_6']))
        @include('theme::sections.banners', ['banners' => $banners['group_6']])
    @endif

    <!-- Best finds under $99 deals start -->
    <!--@include('theme::sections.best_finds')-->

    <!-- best selling Now   -->
    {{--@include('theme::sections.best_selling')--}}

    <!-- Recently Viewed -->
    @include('theme::sections.recent_views')
    @include('theme::auth.modals')
@endsection

@section('scripts')
    <script src="{{ theme_asset_url('js/eislideshow.js') }}"></script>

    <script type="text/javascript">
        // Main slider
        $('#ei-slider').eislideshow({
            animation : 'center',
            autoplay : true,
            slideshow_interval : 5000,
        });

        // Trending now tabs
        $(function() {
          $('.feature__tabs a').click(function() {
            $('.feature__items-inner').slick('refresh');

            // Check for active
            $('.feature__tabs li').removeClass('active');
            $(this).parent().addClass('active');

            // Display active tab
            let currentTab = $(this).attr('href');
            $('.feature__items .feature__items-inner').hide();
            $(currentTab).show();

            return false;
          });
        });

    </script>
@endsection
