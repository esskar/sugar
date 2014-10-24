﻿namespace Sugar.Data.JSON;

interface

uses  
  Sugar,
  Sugar.Collections;

type
  JsonObject = public class (ISequence<KeyValue<String, JsonValue>>)
  private
    Items: Dictionary<String, JsonValue> := new Dictionary<String, JsonValue>;

    method GetItem(Key: String): JsonValue;
    method SetItem(Key: String; Value: JsonValue);
    method GetKeys: sequence of String;
    method GetProperties: sequence of KeyValue<String, JsonValue>; iterator;
  public
    method &Add(Key: String; Value: Object);
    method AddValue(Key: String; Value: JsonValue);
    method Clear;
    method ContainsKey(Key: String): Boolean;
    method &Remove(Key: String): Boolean;

    method ToJson: String;
    method {$IF NOUGAT}description: Foundation.NSString{$ELSEIF COOPER}ToString: java.lang.String{$ELSEIF ECHOES}ToString: System.String{$ENDIF}; override;
    
    {$IF COOPER}
    {$ELSEIF ECHOES}
    method GetEnumerator: System.Collections.IEnumerator;
    method GetGenericEnumerator: System.Collections.Generic.IEnumerator<KeyValue<String, JsonValue>>; implements System.Collections.Generic.IEnumerable<KeyValue<String, JsonValue>>.GetEnumerator;
    {$ELSEIF NOUGAT}
    {$ENDIF}

    class method Load(JsonString: String): JsonObject;

    property Count: Integer read Items.Count;
    property Item[Key: String]: JsonValue read GetItem write SetItem; default;
    property Keys: sequence of String read GetKeys;
    property Properties: sequence of KeyValue<String, JsonValue> read GetProperties;
  end;

implementation

method JsonObject.GetItem(Key: String): JsonValue;
begin
  exit Items[Key];
end;

method JsonObject.SetItem(Key: String; Value: JsonValue);
begin
  SugarArgumentNullException.RaiseIfNil(Value, "Value");
  Items[Key] := Value;
end;

method JsonObject.Add(Key: String; Value: Object);
begin
  AddValue(Key, new JsonValue(Value));  
end;

method JsonObject.AddValue(Key: String; Value: JsonValue);
begin
  SugarArgumentNullException.RaiseIfNil(Value, "Value");
  Items.Add(Key, Value);  
end;

method JsonObject.Clear;
begin
  Items.Clear;
end;

method JsonObject.ContainsKey(Key: String): Boolean;
begin
  exit Items.ContainsKey(Key);
end;

method JsonObject.Remove(Key: String): Boolean;
begin
  exit Items.Remove(Key);
end;

method JsonObject.{$IF NOUGAT}description: Foundation.NSString{$ELSEIF COOPER}ToString: java.lang.String{$ELSEIF ECHOES}ToString: System.String{$ENDIF};
begin
  exit String.Format("[object]: {0} items", Items.Count);
end;

class method JsonObject.Load(JsonString: String): JsonObject;
begin
  var Serializer := new JsonDeserializer(JsonString);
  var Value := Serializer.Deserialize;

  if Value.Kind <> JsonValueKind.Object then
    raise new Exception("Not an object");

  exit Value.ToObject;
end;

method JsonObject.GetKeys: sequence of String;
begin
  exit Items.Keys;
end;

method JsonObject.ToJson: String;
begin
  var Serializer := new JsonSerializer(new JsonValue(self));
  exit Serializer.Serialize;
end;

method JsonObject.GetProperties: sequence of KeyValue<String, JsonValue>;
begin
  for Key in Keys do
    yield new KeyValue<String, JsonValue>(Key, Item[Key]);
end;

{$IF COOPER}
{$ELSEIF ECHOES}
method JsonObject.GetEnumerator: System.Collections.IEnumerator;
begin
  exit GetGenericEnumerator;
end;

method JsonObject.GetGenericEnumerator: System.Collections.Generic.IEnumerator<KeyValue<String, JsonValue>>;
begin
  var props := GetProperties;
  exit props.GetEnumerator;
end;
{$ELSEIF NOUGAT}
{$ENDIF}

end.