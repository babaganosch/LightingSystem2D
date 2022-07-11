for (var v = 0; v < 64; ++v) {
    // This is bad practice. The only way to clean up these lights is
    // by calling CleanupLightSystem()
    var a = new LightSource( LIGHTS.s32, { 
        color:  make_color_rgb(irandom(256), irandom(256), irandom(256)), 
        alpha: 0.85, 
        x: irandom_range(-256, 256), 
        y: irandom_range(-128, 128),
        flicker: { amplitude: 0.15, speed: 0.08 } 
    });
}