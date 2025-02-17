package stdgo._internal.go.importer;
function forCompiler(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _compiler:stdgo.GoString, _lookup:stdgo._internal.go.importer.Importer_lookup.Lookup):stdgo._internal.go.types.Types_importer.Importer {
        {
            final __value__ = _compiler;
            if (__value__ == (("gc" : stdgo.GoString))) {
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ _fset : _fset, _packages : (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>();
                    x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>), _lookup : _lookup } : stdgo._internal.go.importer.Importer_t_gcimports.T_gcimports)) : stdgo.Ref<stdgo._internal.go.importer.Importer_t_gcimports.T_gcimports>));
            } else if (__value__ == (("gccgo" : stdgo.GoString))) {
                var _inst:stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_gccgoinstallation.GccgoInstallation = ({} : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_gccgoinstallation.GccgoInstallation);
                {
                    var _err = (@:check2 _inst.initFromDriver(("gccgo" : stdgo.GoString)) : stdgo.Error);
                    if (_err != null) {
                        return (null : stdgo._internal.go.types.Types_importer.Importer);
                    };
                };
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ _packages : (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>();
                    x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>), _importer : @:check2 _inst.getImporter((null : stdgo.Slice<stdgo.GoString>), (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_initdata.InitData>)), _lookup : _lookup } : stdgo._internal.go.importer.Importer_t_gccgoimports.T_gccgoimports)) : stdgo.Ref<stdgo._internal.go.importer.Importer_t_gccgoimports.T_gccgoimports>));
            } else if (__value__ == (("source" : stdgo.GoString))) {
                if (_lookup != null) {
                    throw stdgo.Go.toInterface(("source importer for custom import path lookup not supported (issue #13847)." : stdgo.GoString));
                };
                return stdgo.Go.asInterface(stdgo._internal.go.internal.srcimporter.Srcimporter_new_.new_((stdgo.Go.setRef(stdgo._internal.go.build.Build_default_.default_) : stdgo.Ref<stdgo._internal.go.build.Build_context.Context>), _fset, (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>();
                    x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>)));
            };
        };
        return (null : stdgo._internal.go.types.Types_importer.Importer);
    }
