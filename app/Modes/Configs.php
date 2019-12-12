<?php

namespace App\Modes;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Modes\Configs
 *
 * @property int $id
 * @property string $key key
 * @property string $value value
 * @property string $comment 备注
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Modes\Configs newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Modes\Configs newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Modes\Configs query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Modes\Configs whereComment($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Modes\Configs whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Modes\Configs whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Modes\Configs whereKey($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Modes\Configs whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Modes\Configs whereValue($value)
 * @mixin \Eloquent
 */
class Configs extends Model
{

}
