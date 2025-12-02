import * as THREE from 'three';

let camera, scene, renderer;

let  objects = [];

let velCubo = 0.001;

var criaSer = function(){
    const geometry = new THREE.BoxGeometry( 2, 10, 2 );
    const materials = [
        new THREE.MeshBasicMaterial({ color: 0xff0000 }), // right
        new THREE.MeshBasicMaterial({ color: 0x00ff00 }), // left
        new THREE.MeshBasicMaterial({ color: 0x0000ff }), // top
        new THREE.MeshBasicMaterial({ color: 0xffff00 }), // bottom
        new THREE.MeshBasicMaterial({ color: 0x00ffff }), // front
        new THREE.MeshBasicMaterial({ color: 0xff00ff })  // back
    ];
    const material = materials;
    let cube = new THREE.Mesh( geometry, material );

    let sphere = new THREE.Mesh(  new THREE.SphereGeometry( 2, 32, 32 )
        , new THREE.MeshBasicMaterial({ color: 0xff00ff } ) );
    objects["ombro"] = sphere;
    scene.add (sphere);

    let pivoOmbro = new THREE.Group();
    sphere.add(pivoOmbro);

    pivoOmbro.add(cube);
    objects["pivoOmbro"] = (pivoOmbro);

    objects["cubo1"] = (cube);
    cube.position.y-=5;

    sphere = new THREE.Mesh(  new THREE.SphereGeometry( 1.5, 32, 32 )
        , new THREE.MeshBasicMaterial({ color: 0xffffff } ) );
    objects["cotovelo"] = sphere;
    sphere.position.y-=4.5;
    cube.add(sphere);

    let pivoCotovelo = new THREE.Group();
    sphere.add(pivoCotovelo);

    cube = new THREE.Mesh( geometry, material );
    pivoCotovelo.add(cube);
    cube.position.y-= 5;
    objects["pivoCotovelo"] = (pivoCotovelo);
    
}

export function init() {

    camera = new THREE.PerspectiveCamera( 70, window.innerWidth / window.innerHeight, 0.1, 100 );
   // camera.position.z = -20;
    
    //cria o mundo
    scene = new THREE.Scene();
    
    renderer = new THREE.WebGLRenderer( );
    renderer.setSize( window.innerWidth, window.innerHeight );

    criaSer();

    camera.position.z = 40;
    //necessário se queremos fazer algo com animação
    renderer.setAnimationLoop( nossaAnimacao );
    
    document.body.appendChild( renderer.domElement );

    renderer.render( scene, camera );

    document.addEventListener('keydown', onKeyDown);

    window.addEventListener( 'resize', onWindowResize );

}

var velOmbro = 0.01;
var velCotovelo = 0.01;

var onKeyDown = function (e){
    console.log(e.keyCode);

    if (e.keyCode == 187){ // +
        objects["ombro"].scale.x+= 0.01;
        objects["ombro"].scale.y+= 0.01;
        objects["ombro"].scale.z+= 0.01;
    }

    if (e.keyCode == 189){ //-
        objects["cubo1"].scale.x-= 0.01;
        objects["cubo1"].scale.y-= 0.01;
        objects["cubo1"].scale.z-= 0.01;
    }

    if (e.keyCode == 82){ //R
         objects["pivoOmbro"].rotation.x-= velOmbro;
         console.log(objects["pivoOmbro"].rotation.x);
         if (objects["pivoOmbro"].rotation.x < -1.62 || objects["pivoOmbro"].rotation.x > 0.9)
            velOmbro*=-1;

    }
    if (e.keyCode == 32) // space
            velCubo = velCubo == 0 ? 0.001 : 0;
}

function onWindowResize() {

    camera.aspect = window.innerWidth / window.innerHeight;
    camera.updateProjectionMatrix();

    renderer.setSize( window.innerWidth, window.innerHeight );

}

var nossaAnimacao = function () {
    
         
    console.log(objects["pivoCotovelo"].rotation.x);

    renderer.render( scene, camera );

}
