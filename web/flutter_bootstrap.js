{{flutter_js}}
{{flutter_build_config}}
_flutter.loader.load({
    onEntrypointLoaded: async function (engineInitializer) {
        const appRunner = await engineInitializer.initializeEngine();
        document.body.querySelector(".loading").style.display = "none";
        await appRunner.runApp();
    },
});
