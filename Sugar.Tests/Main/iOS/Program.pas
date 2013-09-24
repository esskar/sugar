﻿namespace Sugar.Test;

interface

uses
  RemObjects.Oxygene.Sugar.TestFramework,
  UIKit;

type
  Program = public static class
  public
    method Main(argc: Integer; argv: ^^AnsiChar): Int32;
  end;

implementation

method Program.Main(argc: Integer; argv: ^^AnsiChar): Int32;
begin
  using autoreleasepool do begin
    var results := TestRunner.RunAll;
    var output := new StringPrinter(results);
    NSLog("%@", output.Result);
    NSLog("");
    result := 0;
  end;
end;

end.
