project "GLFW"
    kind "StaticLib"
    language "C"
    staticruntime "Off"

    files
    {
        "include/GLFW/glfw3.h",
        "include/GLFW/glfw3native.h",
        "src/internal.h",
        "src/platform.h",
        "src/platform.c",
        "src/context.c",
        "src/init.c",
        "src/input.c",
        "src/monitor.c",
        "src/vulkan.c",
        "src/window.c",
        "src/null_platform.h",
        "src/null_init.c",
        "src/null_joystick.h",
        "src/null_joystick.c",
        "src/null_monitor.c",
        "src/null_window.c"
    }

    filter "system:Windows"
        systemversion "latest"

        files
        {
            "src/win32_module.c",
            "src/win32_platform.h",
            "src/win32_init.c",
            "src/win32_joystick.c",
            "src/win32_monitor.c",
            "src/win32_time.c",
            "src/win32_thread.c",
            "src/win32_window.c",
            "src/wgl_context.c",
            "src/egl_context.c",
            "src/osmesa_context.c"
        }

        defines
        {
            "_GLFW_WIN32",
            "_CRT_SECURE_NO_WARNINGS"
        }

        links "Dwmapi.lib"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "On"

    filter "configurations:Release"
        runtime "Release"
        optimize "On"

    filter "configurations:Shipping"
        runtime "Release"
        optimize "On"
        symbols "Off"
