module dray.test;

///
unittest
{
    import std.stdio;
    import dlib.core.memory;
    import dlib.math.vector;
    import dlib.math.transformation;
    import dray.geometry;
    import dray.shape;
    import dray.jss;
    import dray.raycast;
    
    GeomSphere sphere = New!GeomSphere(1.0f);
    Shape shape = New!Shape(sphere);
    shape.transformation = translationMatrix(Vector3f(3.0f, 0.0f, 0.0f));
    CastResult res;
    assert(rayVsShape(shape, Vector3f(0, 0, 0), Vector3f(1, 0, 0), 10.0f, res));
    writeln(res.point);
    writeln(res.normal);
    assert(res.point == Vector3f(2, 0, 0));
    assert(res.normal == Vector3f(-1, 0, 0));
}
