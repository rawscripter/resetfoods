<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $primaryKey = 'id';
    protected $fillable = [
        'name',
        'email',
        'password',
        'company_name',
        'text_notification',
        'email_notification',
        'user_role',
        'noti_email',
        'mobile',
        'delivery_service',
        'delivery_location',
        'delivery_window',
        'delivery_window_to',
        'pikup',
        'geo_boundary',
        'description',
        'bank',
        'branch',
        'transit',
        'account_number',
        'details',
        'lat',
        'lng',
        'street',
        'city',
        'state',
        'zipcode',
        'country',
        'address',
        'registration_step',
        'is_active'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    public function poolName()
    {
        return $this->hasOne('App\Models\Pool', 'id', 'pool');
    }
}
