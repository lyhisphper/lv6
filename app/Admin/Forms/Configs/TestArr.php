<?php

namespace App\Admin\Forms\Configs;

use App\Modes\Configs;
use Encore\Admin\Widgets\Form;
use Illuminate\Http\Request;

class TestArr extends Form
{
    /**
     * The form title.
     *
     * @var string
     */
    public $title = '测试数组';

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
            'key'     => 'required|in:TESTARR',
            'value'   => 'required|array',
            'comment' => 'required|string|max:20',
        ]);

        $valueArr = [];
        $value    = $request->input('value');
        $num      = count($value['keys']);
        for ($i = 0; $i < $num; $i++) {
            $valueArr[$value['keys'][$i]] = $value['values'][$i];
        }
        Configs::where('id', $request->input('id'))->update([
            'value'   => json_encode($valueArr),
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
        $this->keyValue('value', __('admin.config.value'))->required();
        $this->text('comment', __('admin.config.comment'))->required();
    }

    /**
     * The data of the form.
     *
     * @return array $data
     */
    public function data()
    {
        $config = Configs::where('key', 'TESTARR')->first();
        if (empty($config)) {
            $config          = new Configs();
            $config->key     = 'TESTARR';
            $config->value   = '{ "cmd": "index.init", "data": "1" }';
            $config->comment = '测试配置数组';
            $config->save();
        }
        return [
            'id'      => $config->id,
            'key'     => $config->key,
            'value'   => json_decode($config->value),
            'comment' => $config->comment,
        ];
    }
}
