<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Model;
 
class CounterEvent extends Model
{
    use HasFactory;use Notifiable; 
    public $timestamps = true;
    
    protected $table = 'counter_events';
    protected $fillable = [ 
        'lastAction',
        'counterValue',    
        'created_at',
    ];

    protected $primaryKey = 'id'; 
 
    protected $attributes = [   
        'lastAction'  => 'n/a',
        'counterValue' => 0,    
    ];

   // protected $dispatchesEvents = [
     //   'saved' => CounterEventSaved::class,
 //   ];
} 
