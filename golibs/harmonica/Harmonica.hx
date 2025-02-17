package harmonica;
var gravity(get, set) : Vector;
private function get_gravity():Vector return _internal.github_dot_com.charmbracelet.harmonica.Harmonica_gravity.gravity;
private function set_gravity(v:Vector):Vector {
    _internal.github_dot_com.charmbracelet.harmonica.Harmonica_gravity.gravity = v;
    return v;
}
var terminalGravity(get, set) : Vector;
private function get_terminalGravity():Vector return _internal.github_dot_com.charmbracelet.harmonica.Harmonica_terminalgravity.terminalGravity;
private function set_terminalGravity(v:Vector):Vector {
    _internal.github_dot_com.charmbracelet.harmonica.Harmonica_terminalgravity.terminalGravity = v;
    return v;
}
@:structInit @:using(harmonica.Harmonica.Projectile_static_extension) abstract Projectile(_internal.github_dot_com.charmbracelet.harmonica.Harmonica_projectile.Projectile) from _internal.github_dot_com.charmbracelet.harmonica.Harmonica_projectile.Projectile to _internal.github_dot_com.charmbracelet.harmonica.Harmonica_projectile.Projectile {
    public var _pos(get, set) : Point;
    function get__pos():Point return this._pos;
    function set__pos(v:Point):Point {
        this._pos = v;
        return v;
    }
    public var _vel(get, set) : Vector;
    function get__vel():Vector return this._vel;
    function set__vel(v:Vector):Vector {
        this._vel = v;
        return v;
    }
    public var _acc(get, set) : Vector;
    function get__acc():Vector return this._acc;
    function set__acc(v:Vector):Vector {
        this._acc = v;
        return v;
    }
    public var _deltaTime(get, set) : StdTypes.Float;
    function get__deltaTime():StdTypes.Float return this._deltaTime;
    function set__deltaTime(v:StdTypes.Float):StdTypes.Float {
        this._deltaTime = (v : stdgo.GoFloat64);
        return v;
    }
    public function new(?_pos:Point, ?_vel:Vector, ?_acc:Vector, ?_deltaTime:StdTypes.Float) this = new _internal.github_dot_com.charmbracelet.harmonica.Harmonica_projectile.Projectile(_pos, _vel, _acc, (_deltaTime : stdgo.GoFloat64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(harmonica.Harmonica.Point_static_extension) abstract Point(_internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point) from _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point to _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point {
    public var x(get, set) : StdTypes.Float;
    function get_x():StdTypes.Float return this.x;
    function set_x(v:StdTypes.Float):StdTypes.Float {
        this.x = (v : stdgo.GoFloat64);
        return v;
    }
    public var y(get, set) : StdTypes.Float;
    function get_y():StdTypes.Float return this.y;
    function set_y(v:StdTypes.Float):StdTypes.Float {
        this.y = (v : stdgo.GoFloat64);
        return v;
    }
    public var z(get, set) : StdTypes.Float;
    function get_z():StdTypes.Float return this.z;
    function set_z(v:StdTypes.Float):StdTypes.Float {
        this.z = (v : stdgo.GoFloat64);
        return v;
    }
    public function new(?x:StdTypes.Float, ?y:StdTypes.Float, ?z:StdTypes.Float) this = new _internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point((x : stdgo.GoFloat64), (y : stdgo.GoFloat64), (z : stdgo.GoFloat64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(harmonica.Harmonica.Vector_static_extension) abstract Vector(_internal.github_dot_com.charmbracelet.harmonica.Harmonica_vector.Vector) from _internal.github_dot_com.charmbracelet.harmonica.Harmonica_vector.Vector to _internal.github_dot_com.charmbracelet.harmonica.Harmonica_vector.Vector {
    public var x(get, set) : StdTypes.Float;
    function get_x():StdTypes.Float return this.x;
    function set_x(v:StdTypes.Float):StdTypes.Float {
        this.x = (v : stdgo.GoFloat64);
        return v;
    }
    public var y(get, set) : StdTypes.Float;
    function get_y():StdTypes.Float return this.y;
    function set_y(v:StdTypes.Float):StdTypes.Float {
        this.y = (v : stdgo.GoFloat64);
        return v;
    }
    public var z(get, set) : StdTypes.Float;
    function get_z():StdTypes.Float return this.z;
    function set_z(v:StdTypes.Float):StdTypes.Float {
        this.z = (v : stdgo.GoFloat64);
        return v;
    }
    public function new(?x:StdTypes.Float, ?y:StdTypes.Float, ?z:StdTypes.Float) this = new _internal.github_dot_com.charmbracelet.harmonica.Harmonica_vector.Vector((x : stdgo.GoFloat64), (y : stdgo.GoFloat64), (z : stdgo.GoFloat64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(harmonica.Harmonica.Spring_static_extension) abstract Spring(_internal.github_dot_com.charmbracelet.harmonica.Harmonica_spring.Spring) from _internal.github_dot_com.charmbracelet.harmonica.Harmonica_spring.Spring to _internal.github_dot_com.charmbracelet.harmonica.Harmonica_spring.Spring {
    public var _posPosCoef(get, set) : StdTypes.Float;
    function get__posPosCoef():StdTypes.Float return this._posPosCoef;
    function set__posPosCoef(v:StdTypes.Float):StdTypes.Float {
        this._posPosCoef = (v : stdgo.GoFloat64);
        return v;
    }
    public var _posVelCoef(get, set) : StdTypes.Float;
    function get__posVelCoef():StdTypes.Float return this._posVelCoef;
    function set__posVelCoef(v:StdTypes.Float):StdTypes.Float {
        this._posVelCoef = (v : stdgo.GoFloat64);
        return v;
    }
    public var _velPosCoef(get, set) : StdTypes.Float;
    function get__velPosCoef():StdTypes.Float return this._velPosCoef;
    function set__velPosCoef(v:StdTypes.Float):StdTypes.Float {
        this._velPosCoef = (v : stdgo.GoFloat64);
        return v;
    }
    public var _velVelCoef(get, set) : StdTypes.Float;
    function get__velVelCoef():StdTypes.Float return this._velVelCoef;
    function set__velVelCoef(v:StdTypes.Float):StdTypes.Float {
        this._velVelCoef = (v : stdgo.GoFloat64);
        return v;
    }
    public function new(?_posPosCoef:StdTypes.Float, ?_posVelCoef:StdTypes.Float, ?_velPosCoef:StdTypes.Float, ?_velVelCoef:StdTypes.Float) this = new _internal.github_dot_com.charmbracelet.harmonica.Harmonica_spring.Spring((_posPosCoef : stdgo.GoFloat64), (_posVelCoef : stdgo.GoFloat64), (_velPosCoef : stdgo.GoFloat64), (_velVelCoef : stdgo.GoFloat64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef ProjectilePointer = _internal.github_dot_com.charmbracelet.harmonica.Harmonica_projectilepointer.ProjectilePointer;
class Projectile_static_extension {
    static public function acceleration(_p:Projectile):Vector {
        final _p = (_p : stdgo.Ref<_internal.github_dot_com.charmbracelet.harmonica.Harmonica_projectile.Projectile>);
        return _internal.github_dot_com.charmbracelet.harmonica.Harmonica_projectile_static_extension.Projectile_static_extension.acceleration(_p);
    }
    static public function velocity(_p:Projectile):Vector {
        final _p = (_p : stdgo.Ref<_internal.github_dot_com.charmbracelet.harmonica.Harmonica_projectile.Projectile>);
        return _internal.github_dot_com.charmbracelet.harmonica.Harmonica_projectile_static_extension.Projectile_static_extension.velocity(_p);
    }
    static public function position(_p:Projectile):Point {
        final _p = (_p : stdgo.Ref<_internal.github_dot_com.charmbracelet.harmonica.Harmonica_projectile.Projectile>);
        return _internal.github_dot_com.charmbracelet.harmonica.Harmonica_projectile_static_extension.Projectile_static_extension.position(_p);
    }
    static public function update(_p:Projectile):Point {
        final _p = (_p : stdgo.Ref<_internal.github_dot_com.charmbracelet.harmonica.Harmonica_projectile.Projectile>);
        return _internal.github_dot_com.charmbracelet.harmonica.Harmonica_projectile_static_extension.Projectile_static_extension.update(_p);
    }
}
typedef PointPointer = _internal.github_dot_com.charmbracelet.harmonica.Harmonica_pointpointer.PointPointer;
class Point_static_extension {

}
typedef VectorPointer = _internal.github_dot_com.charmbracelet.harmonica.Harmonica_vectorpointer.VectorPointer;
class Vector_static_extension {

}
typedef SpringPointer = _internal.github_dot_com.charmbracelet.harmonica.Harmonica_springpointer.SpringPointer;
class Spring_static_extension {
    static public function update(_s:Spring, _pos:StdTypes.Float, _vel:StdTypes.Float, _equilibriumPos:StdTypes.Float):stdgo.Tuple<StdTypes.Float, StdTypes.Float> {
        final _pos = (_pos : stdgo.GoFloat64);
        final _vel = (_vel : stdgo.GoFloat64);
        final _equilibriumPos = (_equilibriumPos : stdgo.GoFloat64);
        return {
            final obj = _internal.github_dot_com.charmbracelet.harmonica.Harmonica_spring_static_extension.Spring_static_extension.update(_s, _pos, _vel, _equilibriumPos);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
/**
    * Package harmonica is a set of physics-based animation tools for 2D and 3D
    * applications. There's a spring animation simulator for for smooth, realistic
    * motion and a projectile simulator well suited for projectiles and particles.
    * 
    * Example spring usage:
    * 
    *     // Run once to initialize.
    *     spring := NewSpring(FPS(60), 6.0, 0.2)
    * 
    *     // Update on every frame.
    *     pos := 0.0
    *     velocity := 0.0
    *     targetPos := 100.0
    *     someUpdateLoop(func() {
    *         pos, velocity = spring.Update(pos, velocity, targetPos)
    *     })
    * 
    * Example projectile usage:
    * 
    *    // Run once to initialize.
    *    projectile := NewProjectile(
    *        FPS(60),
    *        Point{6.0, 100.0, 0.0},
    *        Vector{2.0, 0.0, 0.0},
    *        Vector{2.0, -9.81, 0.0},
    *    )
    * 
    *    // Update on every frame.
    *    someUpdateLoop(func() {
    *        pos := projectile.Update()
    *    })
**/
class Harmonica {
    /**
        * NewProjectile creates a new projectile. It accepts a frame rate and initial
        * values for position, velocity, and acceleration. It returns a new
        * projectile.
    **/
    static public inline function newProjectile(_deltaTime:StdTypes.Float, _initialPosition:Point, _initialVelocity:Vector, _initalAcceleration:Vector):Projectile {
        final _deltaTime = (_deltaTime : stdgo.GoFloat64);
        return _internal.github_dot_com.charmbracelet.harmonica.Harmonica_newprojectile.newProjectile(_deltaTime, _initialPosition, _initialVelocity, _initalAcceleration);
    }
    /**
        * FPS returns a time delta for a given number of frames per second. This
        * value can be used as the time delta when initializing a Spring. Note that
        * game engines often provide the time delta as well, which you should use
        * instead of this function, if possible.
        * 
        * Example:
        * 
        * 	spring := NewSpring(FPS(60), 5.0, 0.2)
    **/
    static public inline function fPS(_n:StdTypes.Int):StdTypes.Float {
        final _n = (_n : stdgo.GoInt);
        return _internal.github_dot_com.charmbracelet.harmonica.Harmonica_fps.fPS(_n);
    }
    /**
        * NewSpring initializes a new Spring, computing the parameters needed to
        * simulate a damped spring over a given period of time.
        * 
        * The delta time is the time step to advance; essentially the framerate.
        * 
        * The angular frequency is the angular frequency of motion, which affects the
        * speed.
        * 
        * The damping ratio is the damping ratio of motion, which determines the
        * oscillation, or lack thereof. There are three categories of damping ratios:
        * 
        * Damping ratio > 1: over-damped.
        * Damping ratio = 1: critlcally-damped.
        * Damping ratio < 1: under-damped.
        * 
        * An over-damped spring will never oscillate, but reaches equilibrium at
        * a slower rate than a critically damped spring.
        * 
        * A critically damped spring will reach equilibrium as fast as possible
        * without oscillating.
        * 
        * An under-damped spring will reach equilibrium the fastest, but also
        * overshoots it and continues to oscillate as its amplitude decays over time.
    **/
    static public inline function newSpring(_deltaTime:StdTypes.Float, _angularFrequency:StdTypes.Float, _dampingRatio:StdTypes.Float):Spring {
        final _deltaTime = (_deltaTime : stdgo.GoFloat64);
        final _angularFrequency = (_angularFrequency : stdgo.GoFloat64);
        final _dampingRatio = (_dampingRatio : stdgo.GoFloat64);
        return _internal.github_dot_com.charmbracelet.harmonica.Harmonica_newspring.newSpring(_deltaTime, _angularFrequency, _dampingRatio);
    }
}
