package _internal.github_dot_com.charmbracelet.harmonica;
import stdgo._internal.math.Math;
function newProjectile(_deltaTime:stdgo.GoFloat64, _initialPosition:_internal.github_dot_com.charmbracelet.harmonica.Harmonica_point.Point, _initialVelocity:_internal.github_dot_com.charmbracelet.harmonica.Harmonica_vector.Vector, _initalAcceleration:_internal.github_dot_com.charmbracelet.harmonica.Harmonica_vector.Vector):stdgo.Ref<_internal.github_dot_com.charmbracelet.harmonica.Harmonica_projectile.Projectile> {
        return (stdgo.Go.setRef(({ _pos : _initialPosition?.__copy__(), _vel : _initialVelocity?.__copy__(), _acc : _initalAcceleration?.__copy__(), _deltaTime : _deltaTime } : _internal.github_dot_com.charmbracelet.harmonica.Harmonica_projectile.Projectile)) : stdgo.Ref<_internal.github_dot_com.charmbracelet.harmonica.Harmonica_projectile.Projectile>);
    }
