<?php
namespace App\Http\Middleware;
use Auth;
use View;
use Closure;
use App\Helpers\ListHelper;

class InitSettings
{
	public function handle($request, Closure $next)
	{
		if (!$request->is("install*")) {
			goto og2tk;
		}
		return $next($request);
		og2tk:setSystemConfig();
		View::addNamespace("theme", theme_views_path());
		if (!Auth::guard("web")->check()) {
			goto AO9vL;
		}
		if (!$request->is("admin/*")) {
			goto EORzt;
		}
		$this->can_load();
		EORzt:
		if (!$request->session()->has("impersonated")) {
			goto vhtNG;
		}
		Auth::onceUsingId($request->session()->get("impersonated"));
		vhtNG:
		if (!(!Auth::guard("web")->user()->isFromPlatform() && Auth::guard("web")->user()->merchantId())) {
			goto nVlTB;
		}
		setShopConfig(Auth::guard("web")->user()->merchantId());
		nVlTB:$permissions = ListHelper::authorizations();
		$permissions = isset($extra_permissions) ? array_merge($extra_permissions, $permissions) : $permissions;
		config()->set("permissions", $permissions);
		if (!Auth::guard("web")->user()->isSuperAdmin()) {
			goto d3MOW;
		}
		$slugs = ListHelper::slugsWithModulAccess();
		config()->set("authSlugs", $slugs);
		d3MOW:AO9vL:
		if ($request->ajax()) {
			goto W9zne;
		}
		updateVisitorTable($request);
		W9zne:return $next($request);
	}
	private function can_load()
	{
		MBJej:incevioAutoloadHelpers(getMysqliConnection());
	}
}
