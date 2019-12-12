<?php

namespace App\Admin\Controllers;

use App\Admin\Forms\Configs\TestArr;
use App\Admin\Forms\Configs\TestStr;
use App\Admin\Forms\Setting;
use App\Modes\Configs;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
use Encore\Admin\Widgets\Tab;
use Encore\Admin\Widgets\Table;
use Psy\Util\Str;
use Illuminate\Http\Request;

class SettingController extends AdminController
{
    public function setting(Content $content)
    {
        $forms = [
            'TestStr' => TestStr::class,
            'TestArr' => TestArr::class,
        ];

        return $content
            ->title('系统设置')
            ->body(Tab::forms($forms));
    }

    public function handle(Request $request)
    {
        // 从$request对象中获取数据来处理...

        // 加入一个成功提示
        admin_success('数据处理成功.');

        // 或者一个错误提示
        admin_success('数据处理成功失败.');

        // 处理完成之后回到原来的表单页面，或者通过返回`redirect()`方法跳转到其它页面
        return back();
    }


}
