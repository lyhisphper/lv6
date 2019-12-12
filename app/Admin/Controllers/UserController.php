<?php

namespace App\Admin\Controllers;

use App\User;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Controllers\Dashboard;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Column;
use Encore\Admin\Layout\Content;
use Encore\Admin\Layout\Row;
use Encore\Admin\Show;

class UserController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '用户管理';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new User());

        // 过滤
        // $grid->expandFilter();
        $grid->filter(function ($filter) {
            $filter->disableIdFilter();
            $filter->column(1 / 4, function ($filter) {
                $filter->like('name', __('admin.name'));
            });
        });

        // 新增操作


        $grid->column('id', __('Id'));
        $grid->column('name', __('admin.name'));
        $grid->column('email', __('admin.email'));
        $grid->column('avatar', __('admin.avatar'))->image('', 50, 50);
        $grid->column('mobile', __('admin.mobile'))->replace([0 => '未设置']);
        $grid->column('gender', __('admin.gender'))->using([0 => '保密', 1 => '男', 2 => '女']);
        $grid->column('status', __('admin.status'))->using([0 => '已删除', 1 => '正常', 2 => '禁用']);
        $grid->column('created_at', __('admin.created_at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(User::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('admin.name'));
        $show->field('email', __('admin.email'));
        $show->avatar(__('admin.avatar'))->image();
        $show->field('mobile', __('admin.mobile'));
        $show->field('gender', __('admin.gender'))->using([0 => '保密', 1 => '男', 2 => '女']);
        $show->field('joinip', __('admin.joinip'));
        $show->field('status', __('admin.status'))->using([0 => '删除', 1 => '正常', 2 => '禁用']);
        $show->field('created_at', __('admin.created_at'));
        $show->field('updated_at', __('admin.updated_at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new User);

        $form->text('name', __('admin.name'));
        $form->email('email', __('admin.email'));
        $form->password('password', __('admin.password'));
        $form->image('avatar', __('admin.avatar'));
        $form->text('mobile', __('admin.mobile'))->pattern('[1][3,4,5,7,8,9][0-9]{9}');
        $form->select('gender', __('admin.gender'))->default(0)->options([0 => '保密', 1 => '男', 2 => '女']);
        $form->text('joinip', __('admin.joinip'));
        $form->select('status', __('admin.status'))->default(1)->options([0 => '删除', 1 => '正常', 2 => '禁用']);

        $form->saving(function (Form $form) {
            if ($form->password && $form->model()->password != $form->password) {
                $form->password = bcrypt($form->password);
            } else {
                $form->password = $form->model()->password;
            }
        });
        return $form;
    }
}