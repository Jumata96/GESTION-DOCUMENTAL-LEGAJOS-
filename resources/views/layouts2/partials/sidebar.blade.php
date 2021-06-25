<!-- BEGIN: SideNav-->
    <aside class="sidenav-main nav-collapsible {{ (Auth::user()->menu_dark == 1)? 'sidenav-dark' : 'sidenav-light'}} sidenav-active-square {{ (Auth::user()->menu_colapsible == 1)? 'nav-collapsed' : 'nav-lock'}}">
      <div class="brand-sidebar">
        @if(Auth::user()->menu_colapsible == 0)
        <h1 class="logo-wrapper" style="padding-top: 8px; padding-left: 20px">
        @else
        <h1 class="logo-wrapper" style="padding-top: 8px; padding-left: 12px">
        @endif
              <a href="http://innova-tec.me" class="{{(Auth::user()->menu_dark == 1)? 'brand-logo' : ''}} darken-1" style="padding: 0 0">                
                @if(Auth::user()->menu_dark == 1)
                  @if(Auth::user()->menu_colapsible == 0)
                    <img id="logoInnova" src="{{asset('images/logo/InnovaWifi2.png')}}" alt="InnovaWifi" style=" height: 43px; background-image: url('{{asset('images/logo/Isotipo.png')}}') !importar;">               
                  @else
                    <img id="logoInnova" src="{{asset('images/logo/Isotipo_Blanco.png')}}" alt="InnovaWifi" style=" height: 43px">                      
                    <span id="LogoInnovaTec" class="logo-text hide-on-med-and-down"><b>Innova</b>Tec</span>            
                  @endif                
                @else
                  @if(Auth::user()->menu_colapsible == 0)
                    <img id="logoInnova" src="{{asset('images/logo/InnovaWifi.png')}}" alt="InnovaWifi1" style=" height: 43px">               
                  
                  @else
                    <img id="logoInnova" src="{{asset('images/logo/Isotipo.png')}}" alt="InnovaWifi2" style=" height: 43px; background-image: url('{{asset('images/logo/Isotipo.png')}}') !importar;"> 
                    <span id="LogoInnovaTec" class="hide logo-text hide-on-med-and-down"><b>Innova</b>Tec</span>                          
                  @endif                
                @endif
                
              </a>
          <a class="navbar-toggler" href="#">
            @if(Auth::user()->menu_dark == 1)
            <i class="material-icons">radio_button_unchecked</i>
            @else
            <i class="material-icons">radio_button_checked</i>
            @endif
          </a>
        </h1>
      </div>
      <ul class="sidenav sidenav-collapsible leftside-navigation collapsible sidenav-fixed" id="slide-out" data-menu="menu-navigation" data-collapsible="menu-accordion">
        
                <li class="bold">
                  <a class="waves-effect waves-cyan"  href="{{ url('/home') }}" >
                    <i class="material-icons">settings_input_svideo</i>
                    <span class="nav-text">DashBoard</span> 
                  </a>
                  
                </li>
                <li class="bold" >
                  <a class="collapsible-header waves-effect waves-cyan">
                    <i class="material-icons">settings</i>
                    <span class="nav-text">Configuración</span>
                  </a>
                  <div class="collapsible-body">
                    <ul>
                      <li>
                        <a href="{{ url('/empresa') }}">
                          <i class="material-icons">keyboard_arrow_right</i>
                          <span> Empresa</span>
                        </a>
                      </li>
                      
                      <li>
                        <a href="{{ url('/usuarios') }}">
                          <i class="material-icons">keyboard_arrow_right</i>
                          <span> Usuarios del Sistema</span>
                        </a>
                      </li>
                      <li>
                        <a href="{{ url('/trabajadores') }}">
                          <i class="material-icons">keyboard_arrow_right</i>
                          <span>Trabajadores</span>
                        </a>
                      </li>
                      <li>
                        <a href="{{ url('/gestion-AreaLaboral') }}">
                          <i class="material-icons">keyboard_arrow_right</i>
                          <span>Área Laboral</span>
                        </a>
                      </li>
                      
                      <li>
                        <a href="{{ url('/gestion-CargoLaboral') }}">
                          <i class="material-icons">keyboard_arrow_right</i>
                          <span>Cargo Laboral</span>
                        </a>
                      </li>
                      <li>
                        <a href="{{ url('/gestion-JornadaLaboral') }}">
                          <i class="material-icons">keyboard_arrow_right</i>
                          <span>Jornada Laboral</span>
                        </a>
                      </li>
                       <li>
                        <a href="{{ url('/gestion-nivelRemunerativo') }}">
                          <i class="material-icons">keyboard_arrow_right</i>
                          <span>Nivel Remunerativo</span>
                        </a>
                      </li>
                      
                       <li>
                        <a href="{{ url('/gestion-RegimenLaboral') }}">
                          <i class="material-icons">keyboard_arrow_right</i>
                          <span>Regimen Laboral</span>
                        </a>
                      </li>
                      <li>
                        <a href="{{ url('/gestion-ResolucionLaboral') }}">
                          <i class="material-icons">keyboard_arrow_right</i>
                          <span>Resolución Laboral</span>
                        </a>
                      </li>
                      <li>
                        <a href="{{ url('/gestion-SituacionLaboral') }}">
                          <i class="material-icons">keyboard_arrow_right</i>
                          <span>Situación Laboral</span>
                        </a>
                      </li>
                      
                      
                      <li>
                        <a href="{{ url('/parametros') }}">
                          <i class="material-icons">keyboard_arrow_right</i>
                          <span>Parámetros</span>
                        </a>
                      </li>                      
                    </ul>
                  </div>
                </li>
                <li class="navigation-header separador">
                  <a class="navigation-header-text">Gestión administrativa</a>
                  <i class="navigation-header-icon material-icons">more_horiz</i>
                </li>
                <li class="li-hover">
                <li class="bold"  style="display:none">
                  <a class="waves-effect waves-cyan"  href="{{ url('/gestion-fileacion') }}" >
                    <i class="material-icons">photo_filter</i>
                    <span class="nav-text">Filiación e identificación</span>
                  </a>
                </li>
                <li class="bold"  style="display:none">
                  <a class="waves-effect waves-cyan"  href="{{ url('/gestion-academica') }}" >
                    <i class="material-icons">content_paste</i>
                    <span class="nav-text">Nivel Educativo</span>
                  </a>
                </li>
                <li class="bold"  style="display:none"  >
                  <a class="waves-effect waves-cyan" href="{{ url('/gestion-capacitaciones') }}"   >
                    <i class="material-icons">open_in_browser</i>
                    <span class="nav-text">Capacitación</span>
                  </a>
                </li>
                <li class="bold"  style="display:none">
                  <a class="waves-effect waves-cyan" href="{{ url('/gestion-Contratos') }}">
                    <i class="material-icons">content_copy</i>
                    <span class="nav-text">Contratos Y Nombramiento</span>
                    
                  </a>
                </li>
                <li class="bold"  style="display:none">
                  <a class=" waves-effect waves-cyan"  href="{{ url('/gestion-Renuncias') }}">
                    <i class="material-icons">layers_clear</i>
                    <span class="nav-text">Renuncias y Liquidaciones </span>
                  </a>
                </li>
                
                <li class="bold"  style="display:none">
                  <a class=" waves-effect waves-cyan"  href="{{ url('/gestion-Desplazamiento') }}">
                    <i class="material-icons">settings_ethernet</i>
                    <span class="nav-text">Desplazamiento y cargos</span>
                  </a>
                </li> 
                <li class="bold"  style="display:none">
                  <a class="waves-effect waves-cyan" href="{{ url('/gestion-licencias') }}">
                    <i class="material-icons">timer_off</i>
                    <span class="nav-text">Licencias</span>
                  </a>
                </li>
                <li class="bold"  style="display:none">
                  <a class="waves-effect waves-cyan" href="{{ url('/gestion-vacaciones') }}">
                    <i class="material-icons">flight_takeoff</i>
                    <span class="nav-text">Vacaciones</span>
                  </a>
                </li>
                <li class="bold"  style="display:none">
                  <a class="waves-effect waves-cyan" href="{{ url('/gestion-ascensos') }}">
                    <i class="material-icons">timeline</i>
                    <span class="nav-text">Ascensos</span>
                  </a>
                </li>
                <li class="bold"  style="display:none">
                  <a class="waves-effect waves-cyan" href="{{ url('/gestion-remuneracion') }}">
                    <i class="material-icons">attach_money</i>
                    <span class="nav-text">Remuneración Personal</span>
                  </a>
                </li>
                <li class="bold"  style="display:none">
                  <a class="waves-effect waves-cyan" href="{{ url('/gestion-remuneracionFamiliar') }}">
                    <i class="material-icons">supervisor_account</i>
                    <span class="nav-text">Remuneración Familiar</span>
                  </a>
                </li>
                 <li class="bold"  style="display:none">
                  <a class="waves-effect waves-cyan" href="{{ url('/gestion-evaluaciones') }}">
                    <i class="material-icons">playlist_add_check</i>
                    <span class="nav-text">Evaluaciones</span>
                  </a>
                </li>
                <li class="bold"  style="display:none">
                  <a class="waves-effect waves-cyan" href="{{ url('/gestion-merito') }}">
                    <i class="material-icons">star_border</i>
                    <span class="nav-text">Merito</span>
                  </a>
                </li>
                <li class="bold"  style="display:none">
                  <a class="waves-effect waves-cyan" href="{{ url('/gestion-demerito') }}">
                    <i class="material-icons">do_not_disturb</i>
                    <span class="nav-text">Demerito</span>
                  </a>
                </li>
                {{-- <li class="bold"  style="display:none">
                  <a class="waves-effect waves-cyan" href="{{ url('/gestion-incentivos') }}">
                    <i class="material-icons">add</i>
                    <span class="nav-text">Asignación e insentivos</span>
                    
                  </a>
                </li>
                <li class="bold"  style="display:none">
                  <a class="waves-effect waves-cyan" href="{{ url('/gestion-pension') }}">
                    <i class="material-icons">credit_card</i>
                    <span class="nav-text">Retiro y régimen pension.</span>
                  </a>
                </li>
                <li class="bold"  style="display:none">
                  <a class=" waves-effect waves-cyan" href="{{ url('/gestion-premios') }}">
                    <i class="material-icons">star_border</i>
                    <span class="nav-text">Premios y estímulos</span>
                  </a>                  
                </li>
                <li class="bold"  style="display:none">
                  <a class="waves-effect waves-cyan" href="{{ url('/gestion-sanciones') }}">
                    <i class="material-icons">warning</i>
                    <span class="nav-text">Sanciones</span>
                  </a>
                </li> --}}
                <li class="bold"  style="display:none">
                  <a class="waves-effect waves-cyan" href="{{ url('/gestion-otros') }}" >
                    <i class="material-icons">format_list_bulleted</i>
                    <span class="nav-text">Otros</span>
                  </a>
                </li>
                <li class="bold"  style="display:none">
                  <a class="waves-effect waves-cyan" href="{{ url('/gestion-escalafonario') }}" >
                    <i class="material-icons">receipt</i>
                    <span class="nav-text">Informe escalafonario</span>
                  </a>
                </li>
                {{-- <li class="navigation-header">
                  <a class="navigation-header-text">Mas opciones</a>
                  <i class="navigation-header-icon material-icons">more_horiz</i>
                </li> --}}
                <li class="li-hover">
              
            </li>
            {{-- <li>
              <a class=" waves-effect waves-cyan" href="{{ url('colores') }}" target="_blank">
                <i class="material-icons">palette</i>
                <span class="nav-text">Colores</span>
              </a>
            </li>
            <li>
              <a class=" waves-effect waves-cyan" href="" target="_blank">
                <i class="material-icons">help_outline</i>
                <span class="nav-text">Soporte</span>
              </a>
            </li> --}}
          </ul>
          
       
       
      </ul>
      <div class="navigation-background"></div><a class="sidenav-trigger btn-sidenav-toggle btn-floating btn-medium waves-effect waves-light hide-on-large-only" href="#" data-target="slide-out"><i class="material-icons">menu</i></a>
    </aside>
    <!-- END: SideNav-->