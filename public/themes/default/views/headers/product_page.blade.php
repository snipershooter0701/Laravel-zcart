<section style="margin-bottom: 0px;">
  <div class="container">
    <header class="page-header">
      <div class="row">
        <div class="col-md-12">
          @php
            $t_category = $item->product->categories->first();
          @endphp
          <ol class="breadcrumb nav-breadcrumb">
            @if($t_category && $t_category->subGroup)

              @if($t_category->subGroup->group)
                @include('theme::headers.lists.category_grp', ['category' => $t_category->subGroup->group])
              @endif

              @include('theme::headers.lists.category_subgrp', ['category' => $t_category->subGroup])

              @include('theme::headers.lists.category', ['category' => $t_category])

            @endif
            <li class="active">{!! $item->title !!}</li>
          </ol>
        </div>
      </div>
    </header>
  </div>
</section>