<?php

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/sold_tikets', function () {


    $query = 'with t1 as
                (SELECT *,
                row_number() over(order by id) as rn,
                id - row_number() over(order by id) as difference
                FROM tm_daily_numbers
                WHERE created_at < date(now())
                ),
                t2 as
                (SELECT *, count(*) over (partition by (difference)) as no_of_consecutive_days FROM t1)
                SELECT t2.tm_event_id,
                tm_events.event_name,
                SUM(t2.sold_primary) as sold
                FROM t2
                JOIN tm_events ON t2.tm_event_id = tm_events.id
                WHERE no_of_consecutive_days = 5
                GROUP BY 1
                HAVING sold > 100
                ;';

    $result = DB::select($query);

    dump(count($result) . " EVENTS");
    dd($result);
});
