#include "script_component.hpp"

ADDON = false;

#include "XEH_PREP.hpp"

// blood object model namespace
GVAR(models) = [] call CBA_fnc_createNamespace;

{
    _x params ["_name", "_model"];

    // createSimpleObject expects a path without the leading slash
    if ((_model select [0,1]) isEqualTo "\") then {
        _model = _model select [1];
    };

    GVAR(models) setVariable [_name, _model];
} forEach [
    // higher number means bigger model
    ["blooddrop_1", QPATHTOF(data\drop_1.p3d)],
    ["blooddrop_2", QPATHTOF(data\drop_2.p3d)],
    ["blooddrop_3", QPATHTOF(data\drop_3.p3d)],
    ["blooddrop_4", QPATHTOF(data\drop_4.p3d)]
];

ADDON = true;
