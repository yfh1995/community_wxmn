<?php
/**
 * Created by PhpStorm.
 * User: yfh69
 * Date: 2018/10/14
 * Time: 10:52
 */

namespace App\Admin\Controllers\User;


use App\Common\Tool;
use App\Http\Controllers\Controller;
use App\User;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;

class UserBaseController extends Controller
{
    public function index(Content $content)
    {
        return $content
            ->header(trans('adminUser.user'))
            ->description(trans('adminUser.base_info').trans('common.list'))
            ->body($this->grid()->render());
    }

    public function create(Content $content)
    {
        return $content
            ->header(trans('adminUser.user'))
            ->description(trans('common.create'))
            ->body($this->form());
    }

    public function store()
    {
        return $this->form()->store();
    }

    public function edit($id, Content $content)
    {
        return $content
            ->header(trans('adminUser.user'))
            ->description(trans('common.edit'))
            ->body($this->form()->edit($id));
    }

    public function update($id)
    {
        return $this->form()->update($id);
    }

    public function destroy($id)
    {
        if ($this->form()->destroy($id)) {
            $data = [
                'status'  => true,
                'message' => trans('admin.delete_succeeded'),
            ];
        } else {
            $data = [
                'status'  => false,
                'message' => trans('admin.delete_failed'),
            ];
        }

        return response()->json($data);
    }

    protected function grid()
    {
        $grid = new Grid(new User());

        $grid->id('ID')->sortable();
        $grid->nickname(trans('adminUser.nickname'));
        $grid->name(trans('adminUser.name'));
        $grid->email(trans('adminUser.email'));
        $grid->phone(trans('adminUser.phone'));
//        $grid->avatar(trans('adminUser.avatar'));

        Tool::listAddData($grid);

        $grid->actions(function ($actions) {
            $actions->disableView();
        });

        return $grid;
    }

    protected function form()
    {
        $form = new Form(new User());

        $form->display('id', 'ID');

        $form->text('nickname', trans('adminUser.nickname'))->rules('required');
        $form->text('name', trans('adminUser.name'))->rules('required');
        $form->email('email', trans('adminUser.email'))->rules('required');
        $form->mobile('phone', trans('adminUser.phone'))->rules('required');
        $form->image('avatar', trans('adminUser.avatar'))->name(function ($file) {
            return md5($file->getRealPath()).'.'.$file->guessExtension();
        });

        $form->password('password', trans('adminUser.password'))->rules('required|confirmed')
            ->default(function ($form) {
                return $form->model()->password;
            });
        $form->password('password_confirmation', trans('adminUser.password_confirmation'))->rules('required')
            ->default(function ($form) {
                return $form->model()->password;
            });
        $form->ignore(['password_confirmation']);

        $form->display('created_at', trans('common.created_at'));
        $form->display('updated_at', trans('common.updated_at'));

        $form->saving(function (Form $form) {
            if ($form->password && $form->model()->password != $form->password) {
                $form->password = bcrypt($form->password);
            }
        });

        return $form;
    }
}