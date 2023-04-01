<section>
  <div class="container">
    <div class="row">
      <div class="col-md-9 nopadding-left">

        <div class="space20"></div>

        <!-- Place one Banner -->
        @include('theme::banners.place_one')

        <div class="row">
          <div class="section-title">
            <h4>{!! trans('theme.section_headings.recently_added') !!}</h4>
          </div>

          @include('theme::sliders.carousel_without_feedback', ['products' => $recent])

        </div><!-- /.row -->

        <!-- Place Two Banner -->
        @include('theme::banners.place_two')

        <div class="row">
          <div class="section-title">
            <h4>{!! trans('theme.section_headings.additional_items') !!}</h4>
          </div>

          @include('theme::sliders.carousel_thumbs', ['products' => $additional_items])
        </div><!-- /.row -->

        <!-- Place Three Banner -->
        @include('theme::banners.place_three')
      </div> <!-- /.col-md-9 -->

      <div class="col-md-3 nopadding-right bg-light">
        <div class="section-title" style="margin-top: 30px;">
          <h4>{!! trans('theme.section_headings.weekly_popular') !!}</h4>
        </div>

        @include('theme::contents.sidebar_product_list', ['products' => $weekly_popular])

        <div class="space30"></div>

        <!-- Sidebar Banner -->
        @include('theme::banners.sidebar')
      </div> <!-- /.col-md-3 -->
    </div><!-- /.row -->
  </div><!-- /.container -->
</section>