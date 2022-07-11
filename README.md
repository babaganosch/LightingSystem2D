<h1 align="center">Lighting System 2D for GMS 2.3+ | v1.0.0</h1>
<p align="center"><a href="https://twitter.com/Babaganosch">@babaganosch</a></p>

---

**Lighting System 2D** is a lightweight light engine for GameMaker Studio 2.3+. It's extremly simple to setup and easy to use.

This repository contains a demo project showcasing a simple implementation, but you only need the 'LightingSystem' script, and the Gaussian Blur shaders. 

<p align="center">
  <img src="https://raw.githubusercontent.com/babaganosch/open_storage/master/light_engine.png">
</p>

## Installation

* Copy the `LightingSystem` script into your project.
* Copy the `shd_gaussian_horizontal` shader into your project.
* Copy the `shd_gaussian_vertical` shader into your project.

## TODO
Fix this README. __A lot__ of information is missing

## Usage

* Call `UpdateLights()` In the end step event of a controller object
* Call `DrawLights()` In the end draw event of a controller object

In order to create a new light source, call the LightSource(sprite, attributes) constructor.
For example:
```gml
light = new LightSource( spr_light, { color: c_orange, alpha: 0.7, flicker: { amplitude: 0.05, speed: 0.02 } });
```

Don't forget to free the memory related to the light source when it is not needed any more
```gml
light.free();
```

## Credits
* __niksudan__ - Author of <a href="https://github.com/niksudan/prettylight">prettylight</a>, which this engine is based upon
* __xygthop3__ - The gaussian blur shader
