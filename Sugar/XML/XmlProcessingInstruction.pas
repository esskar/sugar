﻿namespace RemObjects.Oxygene.Sugar.Xml;

{$HIDE W0} //supress case-mismatch errors

interface

uses
  {$IF COOPER}
  org.w3c.dom,
  {$ELSEIF WINDOWS_PHONE}
  System.Xml.Linq,
  {$ELSEIF NOUGAT}
  Foundation,
  {$ENDIF}
  RemObjects.Oxygene.Sugar;

type
{$IF COOPER OR ECHOES OR WINDOWS_PHONE}
  XmlProcessingInstruction = public class (XmlNode)
  private
    property ProcessingInstruction: {$IF COOPER}ProcessingInstruction{$ELSEIF WINDOWS_PHONE}XProcessingInstruction{$ELSE}System.Xml.XmlProcessingInstruction{$ENDIF} 
                                    read Node as {$IF COOPER}ProcessingInstruction{$ELSEIF WINDOWS_PHONE}XProcessingInstruction{$ELSE}System.Xml.XmlProcessingInstruction{$ENDIF};
  public
    {$IF WINDOWS_PHONE}
    property Name: String read "#processinginstruction"; override;
    property InnerText: String read ProcessingInstruction.Data write ProcessingInstruction.Data; override;
    property Value: String read ProcessingInstruction.Data write ProcessingInstruction.Data; override;
    {$ENDIF}
    property Data: String read ProcessingInstruction.Data write ProcessingInstruction.Data;
    property Target: String read ProcessingInstruction.Target;
  end;
{$ELSEIF NOUGAT}
  XmlProcessingInstruction = public class (XmlNode)
  private
    method GetData: String;
    method SetData(aValue: String);
  public
    property Data: String read GetData write SetData;
    property Target: String read Node.Name;
  end;
{$ENDIF}
implementation

{$IF NOUGAT}
method XmlProcessingInstruction.GetData: String;
begin
  exit Node.stringValue;
end;

method XmlProcessingInstruction.SetData(aValue: String);
begin
  Node.setStringValue(aValue);
end;
{$ENDIF}

end.
