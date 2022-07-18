import Lake
open Lake DSL

package geolean {
  -- add package configuration options here
}

lean_lib GeoLean {
  -- add library configuration options here
}

@[defaultTarget]
lean_exe geolean {
  root := `Main
}
