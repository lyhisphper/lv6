<?php

namespace App\Admin\Forms\Configs;

use App\Modes\Configs;
use Encore\Admin\Widgets\Form;
use Illuminate\Http\Request;
use League\Flysystem\Config;

class TestStr extends Form
{
    /**
     * The form title.
     *
     * @var string
     */
    public $title = '测试字符串';

    /**
     * Handle the form request.
     *
     * @param Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request)
    {

        //dump($request->all());
        $request->validate([
            'id'      => 'required|exists:configs,id',
            'key'     => 'required|in:TESTSTR',
            'value'   => 'required|string',
            'comment' => 'required|string|max:20',
        ]);

        Configs::where('id', $request->input('id'))->update([
            'value'   => json_encode($request->input('value')),
            'comment' => $request->input('comment')
        ]);

        admin_success('修改成功');
        return back();
    }

    /**
     * Build a form here.
     */
    public function form()
    {
        $this->text('id')->readonly();
        $this->text('key', __('admin.config.key'))->readonly();
        $this->text('value', __('admin.config.value'))->required();
        $this->text('comment', __('admin.config.comment'))->required();
    }

    /**
     * The data of the form.
     *
     * @return array $data
     */
    public function data()
    {
        $config = Configs::where('key', 'TESTSTR')->first();
        if (empty($config)) {
            $id     = Configs::insertGetId([
                'key'     => 'TESTSTR',
                'value'   => 'TESTSTR',
                'comment' => '测试配置字符串'
            ]);
            $config = Configs::find($id);
        }
        return [
            'id'      => $config->id,
            'key'     => $config->key,
            'value'   => json_decode($config->value),
            'comment' => $config->comment,
        ];
    }
}
