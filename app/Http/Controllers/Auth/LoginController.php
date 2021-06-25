<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Carbon\Carbon;


class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    public function showLoginForm()
    {
        session()->flash('trabajador_Id');
        $trabajador_id = session('trabajador_Id'); 
        $fecha_corte = Carbon::createFromDate(2021,6,25)->addDays(15); 
        $fecha_actual =Carbon::now(); 
        session()->flash('trabajador_Id');

        if($fecha_actual > $fecha_corte){ 
            return view('auth.trialOut');

        }else{
            return view('auth.login');
        }
        
        
    }
}
