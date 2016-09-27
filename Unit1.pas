unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, {xpman,} ExtCtrls, StdCtrls, Series, TeEngine, TeeProcs, Chart,
  ComCtrls,DateUtils, Math, FileCtrl, IniFiles,IdComponent,
  WriteSkoUnit,syncobjs,ConstUnit,WriteGistUnit,WriteLogUnit, Gauges, ExcelWorkUnit;
type
  TForm1 = class(TForm)
    Panel1: TPanel;
    changeFile: TButton;
    StartButton: TButton;
    Chart1: TChart;
    Chart2: TChart;
    Series2: TLineSeries;
    Label2: TLabel;
    timeLabel: TLabel;
    OpenDialog1: TOpenDialog;
    Timer1: TTimer;
    StopButton: TButton;
    Panel2: TPanel;
    TrackBar1: TTrackBar;
    Label3: TLabel;
    Label4: TLabel;
    LabelLat: TLabel;
    LabelLon: TLabel;
    Panel3: TPanel;
    Label7: TLabel;
    Label9: TLabel;
    TrackBar2: TTrackBar;
    Label5: TLabel;
    FileNumTrack: TTrackBar;
    Label6: TLabel;
    Label1: TLabel;
    Button4: TButton;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    tmr1: TTimer;
    tmr2: TTimer;
    gProgress1: TGauge;
    tmrEnd3: TTimer;
    cht1: TChart;
    brsrs0: TBarSeries;
    cht2: TChart;
    brsrs1: TBarSeries;
    cht3: TChart;
    brsrs2: TBarSeries;
    cht4: TChart;
    brsrs3: TBarSeries;
    cht5: TChart;
    brsrs4: TBarSeries;
    cht6: TChart;
    brsrs5: TBarSeries;
    cht7: TChart;
    brsrs6: TBarSeries;
    cht8: TChart;
    brsrs7: TBarSeries;
    cht9: TChart;
    brsrs8: TBarSeries;
    cht10: TChart;
    brsrs9: TBarSeries;
    cht11: TChart;
    brsrs10: TBarSeries;
    cht12: TChart;
    brsrs11: TBarSeries;
    cht13: TChart;
    brsrs12: TBarSeries;
    cht14: TChart;
    brsrs13: TBarSeries;
    cht15: TChart;
    brsrs14: TBarSeries;
    cht16: TChart;
    brsrs15: TBarSeries;
    cht17: TChart;
    brsrs16: TBarSeries;
    cht18: TChart;
    brsrs17: TBarSeries;
    cht19: TChart;
    brsrs18: TBarSeries;
    cht20: TChart;
    brsrs19: TBarSeries;
    cht21: TChart;
    brsrs20: TBarSeries;
    cht22: TChart;
    brsrs21: TBarSeries;
    cht23: TChart;
    brsrs22: TBarSeries;
    cht24: TChart;
    brsrs23: TBarSeries;
    scaleP: TButton;
    scaleM: TButton;
    procedure changeFileClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure StartButtonClick(Sender: TObject);
    procedure StopButtonClick(Sender: TObject);
    procedure Series1Click(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TrackBar2Change(Sender: TObject);
    procedure FileNumTrackChange(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure tmr2Timer(Sender: TObject);
    procedure tmrEnd3Timer(Sender: TObject);
    procedure brsrs0Click(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure brsrs1Click(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure brsrs2Click(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure brsrs3Click(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure brsrs4Click(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure brsrs5Click(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure brsrs6Click(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure brsrs7Click(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure brsrs8Click(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure brsrs9Click(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure brsrs10Click(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure brsrs11Click(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure brsrs12Click(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure brsrs13Click(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure brsrs14Click(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure brsrs15Click(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure brsrs16Click(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure brsrs17Click(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure brsrs18Click(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure brsrs19Click(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure brsrs20Click(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure brsrs21Click(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure brsrs22Click(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure brsrs23Click(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure scalePClick(Sender: TObject);
    procedure scaleMClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;
  // тип для хранения короткой информации о файле-записи СКРУТЖТ
  TfileMiniInfo=record
    path:string;
    size:integer;
  end;

  //тип для хранения информации для выборочной записи в файл
  TrecInfo=record
    fileNumber:integer;
    fileOffset:int64;
  end;

  //тип частотного диапазона
  TFreqRange=record
    beginRange:real;
    endRange:real;
  end;

  //тип для передаче динамич массива в качестве параметра
  TMyArrayOfString=array of TfileMiniInfo;

var
  Form1: TForm1;
  fileSCRUTJT:file;
  stream: TFileStream;
  iGist:integer;
  chanelIndex:integer;
  graphFlag:boolean;
  pocketSCRUTJT: array[1..POCKETSIZE] of byte;//массив - пакет ИРУТ
  timeGeosArr :array [1..4] of byte;//---time
  //skT,cT:integer;
  //---latitude
  latArr :array [1..4] of byte;
  cS,skS :integer;
  //---longtitude
  lonArr:array [1..4] of byte;
  cD,skD :integer;
  //высота
  heightArr:array [1..2] of byte;
  //скорость
  speedArr:array [1..2] of byte;
  //курс
  pathArr:array [1..2] of byte;
  //количество обр. пакетов за 10 мс таймера
  numPocketSp:integer;
  //внутренний счетчик для масштабирования трекбара
  countTrack:integer;
  trackSizeKoef:integer;//коэф. масштабирования для ТрекБара
  //массив файлов
  SCRUTfileArr:TMyArrayOfString;
  fileIndex:integer;
  //полная размерность записи в байтах
  allRecordSize:Int64;
  changeFileFlag:boolean;
  kkkk:integer;
  deltaInFileForBack:Int64;
  //дин массив для записи быстрых парам. в файл
  recordInfoMas:array of TrecInfo;
  iRecordInfoMas:integer;
  //переменные для хранения пользов интервала с строковом виде
  beginInterval:string;
  endInterval:string;
  //переменная для работы с файлом конфигурации
  confIni:TIniFile;
  //счетчик точек во входном массиве для вычисления спектра
  //countPointInSpArr:integer;
  //входной массив для выч. спектра
  //spArrayIn:TByteArr;
  //выходной массив спектра
  //spArrayOut:TIntArr;
  //граница быстрых начало
  fastProcBegLimit:real;
  fastProcEndLimit:real;
  //интервал обработки быстрых
  fastInterval:real;
  //длительность обр. интервала
  intervalSize:integer;
  //частота опроса быстрых
  poolFastFreq:integer;
  poolFastVal:integer;
  //длительность обр. интервала
  kadrSize:integer;
  //длительность обр. интервала в колич. точек
  poolKadrSize:integer;
  //параметр разности скорости движения
  procentD:real;
  //количество подинтервалов
  countInterval:integer;

  //массив частотных диапазонов для п.2 ТЗ  ИРУТ
  arrFreqRange:array [1..MAX_FREQ_RANGES] of TFreqRange;
  //Переменные для отображения с момента запуска времени
  dateTimeBeg:TDateTime;
  dateTimeEnd:TDateTime;
  unixTime:Int64;
  strTime:string;
  csk:TCriticalSection;
  //количество заполн. частотных диапазонов
  numFreqRange:integer;
  //массивы коэфициентов
  cosArrA:array [1..MAX_T_NUM2] of {single}double;
  sinArrA:array [1..MAX_T_NUM2] of {single}double;
  cosArrB:array [1..MAX_T_NUM] of {single}double;
  sinArrB:array [1..MAX_T_NUM] of {single}double;


  //вспомогательные флаги для индикации нахождения калибровки
  flP5V:Boolean;
  flM5V:Boolean;
  
  //флаг для подтверждения нахождения калибровок +5В -5В
  flag_P5V_M5V:Boolean;

  //колиб. +5В
  colibP5V:Byte;
  //колиб. -5В
  colibM5V:Byte;
  //колиб. 0В
  colib0V:Byte;

  //процедура открытия файла по индексу
  procedure openFileForIndex(ind:integer);
  //function TestTime(time:string):boolean; //объявление для возможности запуска из др. юнита
implementation

uses TestChUnit;
const
POCKETSIZE=26;//размер пакета ИРУТ
//uses Unit3;
{$R *.dfm}
//Процедура задержки
//==============================================================================
procedure Wait(value:integer);
var
  i:integer;
begin
  for i:=1 to value do
  begin
    sleep(3);
    application.ProcessMessages;
  end;
end;
//==============================================================================

//==============================================================================
//Процедуры отвечающие за вывод в файл
//==============================================================================

//процедура для записи в файл логов 
procedure SaveResultToFile(var outF:text;str:string);
begin
  Writeln(outF,str);
  //exit
end;
//==============================================================================

//==============================================================================
//Функция формирующая список файлов(полные пути) и полный размер записи. Без вложенности.
//==============================================================================
function FillFileArray(var treeDirPath:string;
  var SCRUTfileArr:TMyArrayOfString;var allRecordSize:Int64):boolean;
var
  //запись найденного в каталоге файла
  searchResult : TSearchRec;
  iSCRUTfileArr:integer;

begin
  allRecordSize:=0;
  SCRUTfileArr:=nil;
  iSCRUTfileArr:=0;

  //-----------
  //добавим \ в конец каталога если его нет
  if treeDirPath[length(treeDirPath)]<>'\' then
  begin
    treeDirPath:=treeDirPath+'\';
  end;
  //-----------

  //находим первое совпадение файла исходя из условий
  if FindFirst(treeDirPath+'IRUT0***',faAnyFile,searchResult)=0 then
  begin
    SetLength(SCRUTfileArr,iSCRUTfileArr+1);
    //полный путь к файлу
    SCRUTfileArr[iSCRUTfileArr].path:=treeDirPath+searchResult.Name;
    //размер файла в байтах
    SCRUTfileArr[iSCRUTfileArr].size:=searchResult.Size;
    inc(iSCRUTfileArr);
    allRecordSize:=allRecordSize+searchResult.Size;
    //ищем повторные совпадения пока не найдем все
    while FindNext(searchResult) = 0 do
    begin
      //полный путь к файлу
      //проверяем что это конф. файл
      if searchResult.Name<>'irutConf.ini' then
      begin
        SetLength(SCRUTfileArr,iSCRUTfileArr+1);
        SCRUTfileArr[iSCRUTfileArr].path:=treeDirPath+searchResult.Name;
        //размер файла в байтах
        SCRUTfileArr[iSCRUTfileArr].size:=searchResult.Size;
        inc(iSCRUTfileArr);
        allRecordSize:=allRecordSize+searchResult.Size;
      end;
    end;
    FindClose(searchResult);
    result:=true;
  end
  else
  begin
    //ошибка в поиске файлов
    //освобождаем структуру поиска
    FindClose(searchResult);
    result:=false;
  end;
end;
//==============================================================================

//==============================================================================
//Заполнение массива частотных диапазонов. Возвращает колич. заполн. частотных диапазонов
//==============================================================================
function FillFreqRange:integer;
var
  i:integer;
  begFreq:real;
  endFreq:real;
begin
  i:=1;
  //заполним массив частотных диапазонов обработки
  while (true) do
  begin
    begFreq:=confIni.readFloat('Быстрые общие параметры',
      'Частотный диапазон обработки №'+intToStr(i)+' от',0.0);
    endFreq:=confIni.readFloat('Быстрые общие параметры',
      'Частотный диапазон обработки №'+intToStr(i)+' до',0.0);
    if ((begFreq>0.0)and(endFreq>0.0)) then
    begin
      arrFreqRange[i].beginRange:=begFreq;
      arrFreqRange[i].endRange:=endFreq;
      inc(i);
    end
    else
    begin
      //такого частотного диапазона нет, значит все диапазоны заполнены
      break;
    end;
  end;
  //количество заполненных частотных диапазонов
  result:=i-1;
end;
//==============================================================================

//==============================================================================
//Заполнение массива подключенных каналов
//==============================================================================
procedure FillEnabledChanal;
var
  //счетчик для заполнения массива подключенных каналов
  i:integer;
  //счетчик для перебора медленных датчиков
  k:integer;
  m:integer;
  num:integer;

  sl:array[1..6] of string;
begin
  //заполняем каналы быстрых
  for i:=1 to MAX_CH_COUNT_FAST do
  begin
    if confIni.readString('Канал '+intToStr(i), 'Состояние','')='ВКЛ' then
    begin
      arrEnableChanals[i].enabled:=true;
    end
    else
    begin
      arrEnableChanals[i].enabled:=false;
    end;
    arrEnableChanals[i].typeS:='fast';
    //заполним диапазон измерения канала
    getChRange(confIni.ReadFloat('Канал '+intToStr(i),'Чувствительность',0.0),i);
  end;

  k:=1;
  while (true) do
  begin
    if confIni.readString('Датчик температуры\влажности №'+intToStr(k), 'Состояние','')='ВКЛ' then
    begin
      //температурный канал
      arrEnableChanals[i].enabled:=true;
      arrEnableChanals[i].typeS:='slowTV';
      arrEnableChanals[i].begRange:=confIni.ReadFloat('Датчик температуры\влажности №'+
          intToStr(k),'Диапазон температуры от',0.0);
      arrEnableChanals[i].endRange:=confIni.ReadFloat('Датчик температуры\влажности №'+
          intToStr(k),'Диапазон температуры до',0.0);
      arrEnableChanals[i].slowParP:=0;
      arrEnableChanals[i].slowParV:=0;
      arrEnableChanals[i].slowParT:=confIni.readInteger('Датчик температуры\влажности №'+
          intToStr(k),'Номер канала темп.',0);
      inc(i);
      //канал влаж.
      arrEnableChanals[i].enabled:=true;
      arrEnableChanals[i].typeS:='slowTV';
      arrEnableChanals[i].begRange:=confIni.ReadFloat('Датчик температуры\влажности №'+
          intToStr(k),'Диапазон влажности от',0.0);
      arrEnableChanals[i].endRange:=confIni.ReadFloat('Датчик температуры\влажности №'+
          intToStr(k),'Диапазон влажности до',0.0);
      arrEnableChanals[i].slowParP:=0;
      arrEnableChanals[i].slowParT:=0;
      arrEnableChanals[i].slowParV:=confIni.readInteger('Датчик температуры\влажности №'+
          intToStr(k),'Номер канала влаж.',0);
      inc(i);
    end
    else if confIni.readString('Датчик температуры\влажности №'+intToStr(k), 'Состояние','')='ВЫКЛ' then
    begin
      arrEnableChanals[i].enabled:=false;
      arrEnableChanals[i].typeS:='slowTV';
      arrEnableChanals[i].begRange:=confIni.ReadFloat('Датчик температуры\влажности №'+
          intToStr(k),'Диапазон температуры от',0.0);
      arrEnableChanals[i].endRange:=confIni.ReadFloat('Датчик температуры\влажности №'+
          intToStr(k),'Диапазон температуры до',0.0);
      arrEnableChanals[i].slowParT:=0;
      arrEnableChanals[i].slowParV:=0;
      arrEnableChanals[i].slowParP:=0;
      inc(i);
      arrEnableChanals[i].enabled:=false;
      arrEnableChanals[i].typeS:='slowTV';
       arrEnableChanals[i].begRange:=confIni.ReadFloat('Датчик температуры\влажности №'+
          intToStr(k),'Диапазон влажности от',0.0);
      arrEnableChanals[i].endRange:=confIni.ReadFloat('Датчик температуры\влажности №'+
          intToStr(k),'Диапазон влажности до',0.0);
      arrEnableChanals[i].slowParT:=0;
      arrEnableChanals[i].slowParV:=0;
      arrEnableChanals[i].slowParP:=0;
      inc(i);
    end
    else
    begin
      if confIni.readString('Датчик давления', 'Состояние','')='ВКЛ' then
      begin
        arrEnableChanals[i].enabled:=true;
        arrEnableChanals[i].slowParP:=confIni.readInteger('Датчик давления','Номер канала дав.',0);
      end
      else
      begin
        arrEnableChanals[i].enabled:=false;
        arrEnableChanals[i].slowParP:=0;
      end;
      arrEnableChanals[i].typeS:='slowP';
      arrEnableChanals[i].begRange:=confIni.ReadFloat('Датчик давления','Диапазон давления от',0.0);
      arrEnableChanals[i].endRange:=confIni.ReadFloat('Датчик давления','Диапазон давления до',0.0);
      arrEnableChanals[i].slowParT:=0;
      arrEnableChanals[i].slowParV:=0;
      inc(i);
    end;

    inc(k);
    if(k=4) then
    begin
      Break;
    end;
  end;

  //k:=1;

  //получим вспомогательный массив медленных
  for m:=MAX_CH_COUNT_FAST+1 to MAX_CH_COUNT do
  begin
    //Form1.mmo1.Lines.Add(IntToStr(m));
    if arrEnableChanals[m].enabled then
    begin
      if  arrEnableChanals[m].typeS='slowTV' then
      begin
        if arrEnableChanals[m].slowParT<>0 then
        begin
          sl[arrEnableChanals[m].slowParT]:='T';
        end
        else
        begin
          sl[arrEnableChanals[m].slowParV]:='V';
        end;
      end
      else
      begin
        if arrEnableChanals[m].slowParP<>0 then
        begin
          sl[arrEnableChanals[m].slowParP]:='P';
        end
      end;
      //inc(k);
    end;
  end;

  i:=1;
  for m:=1 to 6 do
  begin
    if sl[m]<>'' then
    begin
      slowHelpArr[i]:=sl[m];
      Inc(i);
    end;
  end;



end;
//==============================================================================

//==============================================================================
//Работа с файлом конфигурации. Вынимаем параметры для работы ПО
//==============================================================================
procedure WriteConfParam(confPath:string);
begin
  confIni:=TiniFile.Create(confPath);
  //заполнение параметров из конф. файла
  fastProcBegLimit:=confIni.readFloat('Быстрые общие параметры', 'Граница гистограммы обработки от', 0.0);
  fastProcEndLimit:=confIni.readFloat('Быстрые общие параметры', 'Граница гистограммы обработки до', 0.0);
  fastInterval:=confIni.readFloat('Быстрые общие параметры', 'Интервал гистограммы обработки',0.0);
  intervalSize:=confIni.readInteger('Общие параметры', 'Длительность обр. интервала',0);
  poolFastFreq:=confIni.readInteger('Быстрые общие параметры', 'Частота дискретизации',0);
  //запишем длительонсть обр. интервала в количестве точек
  poolFastVal:=poolFastFreq*intervalSize;
  //байтовый размер чтения из файла данных
  blockSize:=POCKETSIZE*READ_POCKET_NUM{(poolFastVal*10)};
  //запишем параметр длительности кадра записи в секундах
  kadrSize:=confIni.readInteger('Общие параметры','Количество обр. интервалов в кадре',0);
  //запишем длительность кадра записи в количестве точек  !!!poolFastFreq
  poolKadrSize:=poolFastFreq*intervalSize*kadrSize;
  procentD:=confIni.readFloat('Быстрые общие параметры', 'Разница скорости движения',0.0);
  //переводим из % в вещественное число
  procentD:=procentD/100;
  //заполнение частотных диапазонов
  numFreqRange:=FillFreqRange;
  //заполним подключенные каналы из подкл. датчиков
  FillEnabledChanal;
  confIni.Free;
end;
//==============================================================================

//==============================================================================
//Сбор счетчика
//==============================================================================
function CollectCounter(iByteDj:integer):byte;
begin
  result:=pocketSCRUTJT[iByteDj];
end;
//==============================================================================

//==============================================================================
//Сбор медленного параметра
//==============================================================================
function CollectSlowParam(iB:integer):word;
begin
  result:=pocketSCRUTJT[iB]+pocketSCRUTJT[iB+1] shl 8;
end;
//==============================================================================


//==============================================================================
//Собираем значение времени
//==============================================================================
procedure CollectTime(iB:integer;count:byte);
var
  timeGEOS_int:Int64;
  dT:TDateTime;
  dtStr:string;
  timeGEOS:cardinal;
begin
  if count=3 then
  begin
    timeGeosArr[4]:=pocketSCRUTJT[iB];
    timeGEOS:=(timeGeosArr[1] shl 24)+(timeGeosArr[2] shl 16)+
      (timeGeosArr[3] shl 8)+timeGeosArr[4];
    //приводим время ГЕОС в UnixTime
    timeGEOS_int:=timeGEOS+1199145600{+14400};
    //приводим к формату dateTime
    dT:=UnixToDateTime(timeGEOS_int);
    //приводим время к строке
    DateTimeToString(dtStr,'dd.mm.yyyy hh:mm:ss',dT);
    //вывод времени
    form1.timeLabel.Caption:=dtStr;
  end
  else
  begin
    case count of
      0:
      begin
        timeGeosArr[1]:=pocketSCRUTJT[iB];
      end;
      1:
      begin
        timeGeosArr[2]:=pocketSCRUTJT[iB];
      end;
      2:
      begin
        timeGeosArr[3]:=pocketSCRUTJT[iB];
      end;
    end;
  end;
end;
//==============================================================================

//==============================================================================
//Собираем значение широты
//==============================================================================
procedure CollectLatitude(iB:integer;count:byte);
var
  gradLat,minLat,secLat :real;
  lat:double;
  latStr:string;
begin
  if count=7 then
  begin
    latArr[4]:=pocketSCRUTJT[iB];
    lat:=(latArr[1] shl 24)+(latArr[2] shl 16)+(latArr[3] shl 8)+
    latArr[4];
    //точность до 25 см расположения по величине
    lat:=lat/100000000;
    //получаем градусы
    lat:=lat*180/3.1415926535;
    gradLat:=trunc(lat);
    //получаем минуты
    minLat:=frac(lat)*60;
    //секунды
    secLat:=frac(minLat)*60;
    secLat:=round(secLat);
    minLat:=trunc(minLat);
    latStr:=FloatToStr(gradLat)+'° '+FloatToStr(minLat)+''' '+FloatToStr(secLat)+'"';
    form1.LabelLat.Caption:=latStr;
  end
  else
  begin
     case count of
      4:
      begin
        latArr[1]:=pocketSCRUTJT[iB];
      end;
      5:
      begin
        latArr[2]:=pocketSCRUTJT[iB];
      end;
      6:
      begin
        latArr[3]:=pocketSCRUTJT[iB];
      end;
     end;
  end;
end;
//==============================================================================

//==============================================================================
//Собираем значение долготы
//==============================================================================
procedure CollectLongtitude(iB:integer;count:byte);
var
  lon :double;
  gradLon,minLon,secLon :real;
  lonStr:string;
begin
  if count=11 then
  begin
    lonArr[4]:=pocketSCRUTJT[iB];
    lon:=(lonArr[1] shl 24)+(lonArr[2] shl 16)+(lonArr[3] shl 8)+
    lonArr[4];
    //точность до 25 см расположения по величине
    lon:=lon/100000000;
    //получаем градусы
    lon:=lon*180/3.1415926535;
    gradLon:=trunc(lon);
    //получаем минуты
    minLon:=frac(lon)*60;
    //секунды
    secLon:=frac(minLon)*60;
    secLon:=round(secLon);
    minLon:=trunc(minLon);
    lonStr:=FloatToStr(gradLon)+'° '+FloatToStr(minLon)+''' '+FloatToStr(secLon)+'"';
    form1.LabelLon.Caption:=lonStr;
  end
  else
  begin
    case count of
      8:
      begin
        lonArr[1]:=pocketSCRUTJT[iB];
      end;
      9:
      begin
        lonArr[2]:=pocketSCRUTJT[iB];
      end;
      10:
      begin
        lonArr[3]:=pocketSCRUTJT[iB];
      end;
    end;
  end;
end;
//==============================================================================


//==============================================================================
//Собираем высоту
//==============================================================================
procedure CollectHeight(iB:integer;count:byte);
var
  height:word;
begin
  if count=13 then
  begin
    heightArr[2]:=pocketSCRUTJT[iB];
    height:=(heightArr[1] shl 8)+ heightArr[2];
    form1.Label10.Caption:=intToStr(height);
  end
  else
  begin
    case count of
      12:
      begin
        heightArr[1]:=pocketSCRUTJT[iB];
      end;
    end;
  end;
end;
//==============================================================================

//==============================================================================
//Собираем скорость
//==============================================================================
procedure CollectSpeed(iB:integer;count:byte);
var
  speed:word;
begin
  if count=15 then
  begin
    speedArr[2]:=pocketSCRUTJT[iB];
    speed:=(speedArr[1] shl 8)+ speedArr[2];
    form1.Label12.Caption:=intToStr(speed);
  end
  else
  begin
    case count of
      14:
      begin
        speedArr[1]:=pocketSCRUTJT[iB];
      end;
    end;
  end;
end;
//==============================================================================

//==============================================================================
//Собираем курс
//==============================================================================
procedure CollectPath(iB:integer;count:byte);
var
  path:double;
  gradPath:real;
  minPath:real;
  pathStr:string;
begin
  if count=17 then
  begin
    pathArr[2]:=pocketSCRUTJT[iB];
    path:=(pathArr[1] shl 8)+ pathArr[2];
    //задаем точность определения курса.
    path:=path/10000;
    gradPath:=trunc(path);
    //получаем минуты
    minPath:=frac(path)*60;
    minPath:=trunc(minPath);
    pathStr:=FloatToStr(gradPath)+'° '+FloatToStr(minPath)+''' ';
    form1.Label14.Caption:=pathStr;
  end
  else
  begin
    case count of
      16:
      begin
        pathArr[1]:=pocketSCRUTJT[iB];
      end;
    end;
  end;
end;
//==============================================================================


//==============================================================================
//Получаем количество видимых спутников
//==============================================================================
procedure CollectVisSetellites(iB:integer);
begin
  form1.Label16.Caption:=intToStr(pocketSCRUTJT[iB]);
end;
//==============================================================================

//==============================================================================
//Получаем количество видимых спутников
//==============================================================================
procedure CollectDecisSetellites(iB:integer);
begin
  form1.Label18.Caption:=intToStr(pocketSCRUTJT[iB]);
end;
//==============================================================================

//==============================================================================
//Получаем признак наличия спутника в текущий момент
//==============================================================================
procedure CollectDecision(iB:integer);
begin
  if (pocketSCRUTJT[iB] and 1)=1 then
  begin
    form1.Label20.Caption:='Да';
  end
  else
  begin
    form1.Label20.Caption:='Нет';
  end;
end;
//==============================================================================


//==============================================================================
//Получаем колибровку +5V
//==============================================================================
procedure CollectColibP5V(iB:integer);
begin
  colibP5V:=pocketSCRUTJT[iB];
  flP5V:=True;
end;
//==============================================================================


//==============================================================================
//Получаем колибровку -5V
//==============================================================================
procedure CollectColibM5V(iB:integer);
begin
  colibM5V:=pocketSCRUTJT[iB];
  flM5V:=True;
  if ((flP5V)and(flM5V)) then
  begin
    flag_P5V_M5V:=True;
  end;
end;
//==============================================================================

//==============================================================================
//Получаем колибровку 0V
//==============================================================================
procedure CollectColib0V(iB:integer);
begin
  colib0V:=pocketSCRUTJT[iB];
end;
//==============================================================================

//==============================================================================
//Отчистка чартов каналов
//==============================================================================
{procedure ClearCharts;
var
  i,j:Integer;
begin
  j:=1;
  i:=0;
  //Form1.cht1.Series[0].AddXY(0,100);
  //Application.ProcessMessages;
  while (true) do
  begin
    Form1.mmo1.Lines.Add(Form1.Components[i].Name);
    if Form1.Components[i] is TChart then
    begin
      if (Form1.Components[i] as TChart).name='cht'+intTostr(j) then
      begin
        //(Form1.Components[i] as TChart).Series[0].AddXY(0,100);
        (Form1.Components[i] as TChart).Series[0].Clear;
        Form1.mmo1.Lines.Add(Form1.Components[i].Name+'!!!');
        Inc(j);
        Form1.mmo1.Lines.Add(intTostr(j)+'!!!');
        if j=MAX_CH_COUNT_FAST+1 then
        begin
          Form1.mmo1.Lines.Add(intTostr(j)+'!!!');
          Break;
        end;
      end;
    end;
    inc(i);
  end;





  {for i:=0 to MAX_CH_COUNT_FAST-1 do
  begin
    if Form1.Components[i] is TChart then
    begin
      if (Form1.Components[i] as TChart).name='cht'+intTostr(i+1) then
      begin
        (Form1.Components[i] as TChart).Series[0].Clear;
      end;
    end;
  end;}
{end; }
//==============================================================================

//==============================================================================
//Заполнение чартов каналов
//==============================================================================
{procedure FillCharts;
var
  i,j:Integer;
begin
  j:=1;
  i:=0;
  //Form1.cht1.Series[0].AddXY(0,100);
  //Application.ProcessMessages;
  while (true) do
  begin
    Form1.mmo1.Lines.Add(Form1.Components[i].Name);
    if Form1.Components[i] is TChart then
    begin
      if (Form1.Components[i] as TChart).name='cht'+intTostr(j) then
      begin
        (Form1.Components[i] as TChart).Series[0].AddXY(0,100);
        Form1.mmo1.Lines.Add(Form1.Components[i].Name+'!!!');
        Inc(j);
        Form1.mmo1.Lines.Add(intTostr(j)+'!!!');
        if j=MAX_CH_COUNT_FAST+1 then
        begin
          Form1.mmo1.Lines.Add(intTostr(j)+'!!!');
          Break;
        end;
      end;
    end;
    inc(i);
  end;




  {for i:=0 to MAX_CH_COUNT_FAST-1 do
  begin
    Form1.mmo1.Lines.Add(Form1.Components[i].Name);


    if Form1.Components[i] is TChart then
    begin
      if (Form1.Components[i] as TChart).name='cht'+intTostr(i+1) then
      begin
        (Form1.Components[i] as TChart).Series[0].AddXY(1,100);
      end;
    end;
  end;}
{end; }
//==============================================================================

//==============================================================================
//Отчистка чартов каналов
//==============================================================================
procedure ClearCharts;
var
  i:integer;
begin
  for i:=1 to MAX_CH_COUNT_FAST do
  begin
    case i of
      1:
      begin
        form1.cht1.Series[0].Clear;
      end;
      2:
      begin
        form1.cht2.Series[0].Clear;
      end;
      3:
      begin
        form1.cht3.Series[0].Clear;
      end;
      4:
      begin
        form1.cht4.Series[0].Clear;
      end;
      5:
      begin
        form1.cht5.Series[0].Clear;
      end;
      6:
      begin
        form1.cht6.Series[0].Clear;
      end;
      7:
      begin
        form1.cht7.Series[0].Clear;
      end;
      8:
      begin
        form1.cht8.Series[0].Clear;
      end;
      9:
      begin
        form1.cht9.Series[0].Clear;
      end;
      10:
      begin
        form1.cht10.Series[0].Clear;
      end;
      11:
      begin
        form1.cht11.Series[0].Clear;
      end;
      12:
      begin
        form1.cht12.Series[0].Clear;
      end;
      13:
      begin
        form1.cht13.Series[0].Clear;
      end;
      14:
      begin
        form1.cht14.Series[0].Clear;
      end;
      15:
      begin
        form1.cht15.Series[0].Clear;
      end;
      16:
      begin
        form1.cht16.Series[0].Clear;
      end;
      17:
      begin
        form1.cht17.Series[0].Clear;
      end;
      18:
      begin
        form1.cht18.Series[0].Clear;
      end;
      19:
      begin
        form1.cht19.Series[0].Clear;
      end;
      20:
      begin
        form1.cht20.Series[0].Clear;
      end;
      21:
      begin
        form1.cht21.Series[0].Clear;
      end;
      22:
      begin
        form1.cht22.Series[0].Clear;
      end;
      23:
      begin
        form1.cht23.Series[0].Clear;
      end;
      24:
      begin
        form1.cht24.Series[0].Clear;
      end;
    end;
  end;
end;
//==============================================================================

//==============================================================================
procedure FillCharts(chN:integer;val:{integer}double);
begin
  case chN of
      1:
      begin
        form1.cht1.Series[0].AddXY(chN,val);
      end;
      2:
      begin
        form1.cht2.Series[0].AddXY(chN,val);
      end;
      3:
      begin
        form1.cht3.Series[0].AddXY(chN,val);
      end;
      4:
      begin
        form1.cht4.Series[0].AddXY(chN,val);
      end;
      5:
      begin
        form1.cht5.Series[0].AddXY(chN,val);
      end;
      6:
      begin
        form1.cht6.Series[0].AddXY(chN,val);
      end;
      7:
      begin
        form1.cht7.Series[0].AddXY(chN,val);
      end;
      8:
      begin
        form1.cht8.Series[0].AddXY(chN,val);
      end;
      9:
      begin
        form1.cht9.Series[0].AddXY(chN,val);
      end;
      10:
      begin
        form1.cht10.Series[0].AddXY(chN,val);
      end;
      11:
      begin
        form1.cht11.Series[0].AddXY(chN,val);
      end;
      12:
      begin
        form1.cht12.Series[0].AddXY(chN,val);
      end;
      13:
      begin
        form1.cht13.Series[0].AddXY(chN,val);
      end;
      14:
      begin
        form1.cht14.Series[0].AddXY(chN,val);
      end;
      15:
      begin
        form1.cht15.Series[0].AddXY(chN,val);
      end;
      16:
      begin
        form1.cht16.Series[0].AddXY(chN,val);
      end;
      17:
      begin
        form1.cht17.Series[0].AddXY(chN,val);
      end;
      18:
      begin
        form1.cht18.Series[0].AddXY(chN,val);
      end;
      19:
      begin
        form1.cht19.Series[0].AddXY(chN,val);
      end;
      20:
      begin
        form1.cht20.Series[0].AddXY(chN,val);
      end;
      21:
      begin
        form1.cht21.Series[0].AddXY(chN,val);
      end;
      22:
      begin
        form1.cht22.Series[0].AddXY(chN,val);
      end;
      23:
      begin
        form1.cht23.Series[0].AddXY(chN,val);
      end;
      24:
      begin
        form1.cht24.Series[0].AddXY(chN,val);
      end;
    end;
end;
//==============================================================================

//==============================================================================
//Функция перевода быстрых в вольты
//==============================================================================
function getColibKodToVolt(kodVal:byte;kP:byte;kM:byte):double;
begin
 //10 это размах от -5 до 5
 Result:=((kodVal-kM)/(kP-kM))*10-5;
end;
//==============================================================================

//==============================================================================
//Функция перевода быстрых из вольт в м/c2
//==============================================================================
function getColibVoltToAcs(volt:double;kP:double;kM:double;diap:double):double;
begin
 //abs(diap*2) это размах от -5В до 5В
 Result:=((volt-kM)/(kP-kM))*abs(diap*2)+diap;
end;
//==============================================================================




//==============================================================================
//Вывод на диаграмму и гистограмму
//==============================================================================
procedure OutToDiaAndGist(var iB:integer);
var
  //значение канала в вольтах  диаграмма
  valInVoltD:double;
  //значение канала в м/c2  диаграмма
  valInAcsD:Double;

  //значение канала в вольтах  гист.
  valInVoltG:double;
  //значение канала в м/c2  гист
  valInAcsG:Double;
begin
  //form1.Chart1.Series[0].Clear;

  ClearCharts;

  //FillCharts;
  //Application.ProcessMessages;
  while iB<=POCKETSIZE-1 do
  begin
    //вывод столбца на диаграмму. c 1 .
    //проверяем подключен ли канал, если нет вместо значений выводим нули
    if (arrEnableChanals[iB-1].enabled) then
    begin
      // В
      valInVoltD:=getColibKodToVolt(pocketSCRUTJT[iB],colibP5V,colibM5V);
      // м/c2
      valInAcsD:=getColibVoltToAcs(valInVoltD,5,-5,arrEnableChanals[iB-1].begRange);
      //вывод на диаграмму
      FillCharts(iB-1,valInAcsD);
      //form1.Chart1.Series[0].AddXY(iB-1,pocketSCRUTJT[iB]);
    end
    else
    begin
      // канал не подлючен выводим нули
      FillCharts(iB-1,0);
      //form1.Chart1.Series[0].AddXY(iB-1,0);
    end;
    //form1.Memo1.Lines.Add(intToStr(iB-2));

    //Вывод выбранного значения байта на гистограмму
    //==
    if (graphFlag) then
    begin
      if iB=chanelIndex+2 then
      begin
        //проверяем подключен ли выводимый на гист. канал
        //-2 т.к в массиве подкл. каналов 1 канал в 1 элементе. а в пакете он 3
        if (arrEnableChanals[iB-1].enabled) then
        begin
          // В
          valInVoltG:=getColibKodToVolt(pocketSCRUTJT[iB],colibP5V,colibM5V);
          // м/c2
          valInAcsG:=getColibVoltToAcs(valInVoltG,5,-5,arrEnableChanals[iB-1].begRange);
          form1.Chart2.Series[0].AddXY(iGist,valInAcsG);
          inc(iGist);
        end
        else
        begin
          // канал не подлючен выводим нули
          form1.Chart2.Series[0].AddXY(iGist,0);
        end;
        if iGist>round(form1.Chart2.BottomAxis.Maximum) then
        begin
          iGist:=0;
          form1.Chart2.Series[0].Clear;
        end;
      end;
    end;
    //==
    inc(iB);
  end;
end;
//==============================================================================




//==============================================================================
// Процедура открытия файла по индексу
//==============================================================================
procedure openFileForIndex(ind:integer);
begin
  stream:=TFileStream.Create(SCRUTfileArr[ind].path,fmShareDenyNone{fmOpenRead});
end;
//==============================================================================

//==============================================================================
//Сбор медленных параметров
//==============================================================================
procedure CollectSlowParams(iByte:integer;pockCount:byte);
begin
  //в зависимости от номера счетчика пакета причислим байт медл.
  //к нужному байту медленных параметров

  //время
  if ((pockCount>=0) and (pockCount<=3)) then
  begin
    CollectTime(iByte,pockCount);
  end;

  //широта
  if ((pockCount>=4) and (pockCount<=7)) then
  begin
    CollectLatitude(iByte,pockCount);
  end;

  //долгота
  if ((pockCount>=8) and (pockCount<=11)) then
  begin
    CollectLongtitude(iByte,pockCount);
  end;

  //высота
  if ((pockCount>=12) and (pockCount<=13)) then
  begin
    CollectHeight(iByte,pockCount);
  end;

  //скорость
  if ((pockCount>=14) and (pockCount<=15)) then
  begin
    CollectSpeed(iByte,pockCount);
  end;

  //курс
  if ((pockCount>=16) and (pockCount<=17)) then
  begin
    CollectPath(iByte,pockCount);
  end;

  //количество видимых спутников
  if pockCount=18 then
  begin
    CollectVisSetellites(iByte);
  end;

  //количество спутников в решении
  if pockCount=19 then
  begin
    CollectDecisSetellites(iByte);
  end;

  //слово состояния 0-нет решения, 1-есть решение
  if pockCount=20 then
  begin
    CollectDecision(iByte);
  end;

  //колибровка +5В
  if pockCount=22 then
  begin
    CollectColibP5V(iByte);
  end;

  //колибровка -5В
  if pockCount=23 then
  begin
    CollectColibM5V(iByte);
  end;

   //колибровка 0В
  if pockCount=24 then
  begin
    CollectColib0V(iByte);
  end;
end;
//==============================================================================





//==============================================================================
//Процедура по разбору пакета СКРУТЖТ. Передается количество пакетов.
//==============================================================================
procedure ParsePocket(numberOfPocket:word;var bool:boolean);
var
  i:integer;
  iByte:integer;
  //счетчик СКРУТЖТ
  countSCRUTJT:byte;//0..255
  //медленный параметр
  //slowParamSCRUTJ:word;
  //strPocket:string;
begin
  i:=1;
  //для переключения между файлами
  if (bool) then
  begin
    bool:=false;
    form1.TrackBar1.Position:=1;
  end;

  //последовательно обрабатываем пакеты
  while i<=numberOfPocket do
  begin
    try
      //читаем из файла 26 байт, 1 пакет
      Stream.Read(pocketSCRUTJT, SizeOf(pocketSCRUTJT));
      //первый байт счетчик пакета
      //счетчик пакета(слово).Собираем его.
      iByte:=1;
      countSCRUTJT:=CollectCounter(iByte);
      iByte:=2;


      //проверяем нашли ли калибровки +-5В

      if (flag_P5V_M5V) then
      begin
        //Вывод быстрых параметров на Диаграмму и вывод на график
        //1-24 быстрых по 1 байту
        OutToDiaAndGist(iByte);
      end;

      //собираем медленные параметры. последний байт пакета
      CollectSlowParams(POCKETSIZE,countSCRUTJT);

      if countTrack=trackSizeKoef then
      begin
         form1.TrackBar1.Position:=form1.TrackBar1.Position+form1.TrackBar1.PageSize;
         countTrack:=1;
      end
      else
      begin
        inc(countTrack);
      end;
    finally
      //проверяем  дошли ли до конца файла. Дошли значит заканчиваем работу с файлом
      if  stream.Position>=stream.Size then
      begin
        form1.Timer1.Enabled:=false;
        //проверяем не конец ли записи
        if fileIndex<length(SCRUTfileArr)-1 then
        begin
          stream.Free;
          //wait(5);
          inc(fileIndex);
          openFileForIndex(fileIndex);
          //переключаем номер файла в трекбаре номеров
          form1.FileNumTrack.Position:=form1.FileNumTrack.Position+form1.FileNumTrack.PageSize;
          form1.TrackBar1.Position:=1;
        end
        else
        begin
          //конец
          //последний файл не освобождаем
          form1.StartButton.Enabled:=false;
          form1.StopButton.Enabled:=false;

          ClearCharts;
          //form1.Chart1.Series[0].Clear;
          form1.Chart2.Series[0].Clear;
        end;
      end;
    end;
    inc(i);
  end;
end;

//==============================================================================

//==============================================================================
//
//==============================================================================
procedure FillSinCosTables;
var
  i:integer;
  j:integer;
  k:integer;
  iPrev:integer;
  //размерность переданного массива.
  arrSize:integer;
  //половина размера массива
  arrSizeDiv2:integer;
  koef:double;
  //ff:integer;
begin
  arrSize:=trunc(poolFastVal/KOEF_R);
  arrSizeDiv2:=trunc(arrSize/2);
  k:=1;
  for i:=1 to arrSizeDiv2 do
  begin
    iPrev:=i;
    koef:=iPrev/arrSizeDiv2;
    j:=1;
    while j<=arrSizeDiv2 do
    begin
      cosArrA[k]:=cos(2*PI*(j+1)*koef);
      cosArrA[k+1]:=cos(2*PI*(j+2)*koef);
      cosArrA[k+2]:=cos(2*PI*(j+3)*koef);
      cosArrA[k+3]:=cos(2*PI*(j+4)*koef);

      sinArrA[k]:=sin(2*PI*(j+1)*koef);
      sinArrA[k+1]:=sin(2*PI*(j+2)*koef);
      sinArrA[k+2]:=sin(2*PI*(j+3)*koef);
      sinArrA[k+3]:=sin(2*PI*(j+4)*koef);
      k:=k+4;
      j:=j+4;
    end;
  end;

  for i:=1 to arrSizeDiv2 do
  begin
    iPrev:=i;
    koef:=iPrev/arrSize;
    cosArrB[i]:=cos(2*PI*koef);
    sinArrB[i]:=sin(2*PI*koef);
  end;
end;
//==============================================================================


//==============================================================================
// Установка диапазона осей каналов быстрых
//==============================================================================
procedure SetFastChDiaRange;
var
  i:integer;
begin
  for i:=1 to MAX_CH_COUNT_FAST do
  begin
    case i of
      1:
      begin
        //расставим доступность элементов
        if (arrEnableChanals[i].enabled) then
        begin
          Form1.cht1.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
          Form1.cht1.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
        end
        else
        begin
          Form1.cht1.Color:=clMedGray;
          Form1.cht1.Enabled:=false;
        end;
      end;
      2:
      begin
        //расставим доступность элементов
        if (arrEnableChanals[i].enabled) then
        begin
          Form1.cht2.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
          Form1.cht2.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
        end
        else
        begin
          Form1.cht2.Color:=clMedGray;
          Form1.cht2.Enabled:=false;
        end;
      end;
      3:
      begin
        //расставим доступность элементов
        if (arrEnableChanals[i].enabled) then
        begin
          Form1.cht3.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
          Form1.cht3.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
        end
        else
        begin
          Form1.cht3.Color:=clMedGray;
          Form1.cht3.Enabled:=false;
        end;
      end;
      4:
      begin
        //расставим доступность элементов
        if (arrEnableChanals[i].enabled) then
        begin
          Form1.cht4.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
          Form1.cht4.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
        end
        else
        begin
          Form1.cht4.Color:=clMedGray;
          Form1.cht4.Enabled:=false;
        end;
      end;
      5:
      begin
        //расставим доступность элементов
        if (arrEnableChanals[i].enabled) then
        begin
          Form1.cht5.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
          Form1.cht5.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
        end
        else
        begin
          Form1.cht5.Color:=clMedGray;
          Form1.cht5.Enabled:=false;
        end;
      end;
      6:
      begin
        //расставим доступность элементов
        if (arrEnableChanals[i].enabled) then
        begin
          Form1.cht6.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
          Form1.cht6.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
        end
        else
        begin
          Form1.cht6.Color:=clMedGray;
          Form1.cht6.Enabled:=false;
        end;
      end;
      7:
      begin
        //расставим доступность элементов
        if (arrEnableChanals[i].enabled) then
        begin
          Form1.cht7.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
          Form1.cht7.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
        end
        else
        begin
          Form1.cht7.Color:=clMedGray;
          Form1.cht7.Enabled:=false;
        end;
      end;
      8:
      begin
        //расставим доступность элементов
        if (arrEnableChanals[i].enabled) then
        begin
          Form1.cht8.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
          Form1.cht8.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
        end
        else
        begin
          Form1.cht8.Color:=clMedGray;
          Form1.cht8.Enabled:=false;
        end;
      end;
      9:
      begin
        //расставим доступность элементов
        if (arrEnableChanals[i].enabled) then
        begin
          Form1.cht9.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
          Form1.cht9.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
        end
        else
        begin
          Form1.cht9.Color:=clMedGray;
          Form1.cht9.Enabled:=false;
        end;
      end;
      10:
      begin
        //расставим доступность элементов
        if (arrEnableChanals[i].enabled) then
        begin
          Form1.cht10.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
          Form1.cht10.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
        end
        else
        begin
          Form1.cht10.Color:=clMedGray;
          Form1.cht10.Enabled:=false;
        end;
      end;
      11:
      begin
        //расставим доступность элементов
        if (arrEnableChanals[i].enabled) then
        begin
          Form1.cht11.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
          Form1.cht11.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
        end
        else
        begin
          Form1.cht11.Color:=clMedGray;
          Form1.cht11.Enabled:=false;
        end;
      end;
      12:
      begin
        //расставим доступность элементов
        if (arrEnableChanals[i].enabled) then
        begin
          Form1.cht12.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
          Form1.cht12.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
        end
        else
        begin
          Form1.cht12.Color:=clMedGray;
          Form1.cht12.Enabled:=false;
        end;
      end;
      13:
      begin
        //расставим доступность элементов
        if (arrEnableChanals[i].enabled) then
        begin
          Form1.cht13.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
          Form1.cht13.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
        end
        else
        begin
          Form1.cht13.Color:=clMedGray;
          Form1.cht13.Enabled:=false;
        end;
      end;
      14:
      begin
        //расставим доступность элементов
        if (arrEnableChanals[i].enabled) then
        begin
          Form1.cht14.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
          Form1.cht14.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
        end
        else
        begin
          Form1.cht14.Color:=clMedGray;
          Form1.cht14.Enabled:=false;
        end;
      end;
      15:
      begin
        //расставим доступность элементов
        if (arrEnableChanals[i].enabled) then
        begin
          Form1.cht15.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
          Form1.cht15.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
        end
        else
        begin
          Form1.cht15.Color:=clMedGray;
          Form1.cht15.Enabled:=false;
        end;
      end;
      16:
      begin
        //расставим доступность элементов
        if (arrEnableChanals[i].enabled) then
        begin
          Form1.cht16.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
          Form1.cht16.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
        end
        else
        begin
          Form1.cht16.Color:=clMedGray;
          Form1.cht16.Enabled:=false;
        end;
      end;
      17:
      begin
        //расставим доступность элементов
        if (arrEnableChanals[i].enabled) then
        begin
          Form1.cht17.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
          Form1.cht17.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
        end
        else
        begin
          Form1.cht17.Color:=clMedGray;
          Form1.cht17.Enabled:=false;
        end;
      end;
      18:
      begin
        //расставим доступность элементов
        if (arrEnableChanals[i].enabled) then
        begin
          Form1.cht18.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
          Form1.cht18.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
        end
        else
        begin
          Form1.cht18.Color:=clMedGray;
          Form1.cht18.Enabled:=false;
        end;
      end;
      19:
      begin
        //расставим доступность элементов
        if (arrEnableChanals[i].enabled) then
        begin
          Form1.cht19.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
          Form1.cht19.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
        end
        else
        begin
          Form1.cht19.Color:=clMedGray;
          Form1.cht19.Enabled:=false;
        end;
      end;
      20:
      begin
        //расставим доступность элементов
        if (arrEnableChanals[i].enabled) then
        begin
          Form1.cht20.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
          Form1.cht20.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
        end
        else
        begin
          Form1.cht20.Color:=clMedGray;
          Form1.cht20.Enabled:=false;
        end;
      end;
      21:
      begin
        //расставим доступность элементов
        if (arrEnableChanals[i].enabled) then
        begin
          Form1.cht21.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
          Form1.cht21.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
        end
        else
        begin
          Form1.cht21.Color:=clMedGray;
          Form1.cht21.Enabled:=false;
        end;
      end;
      22:
      begin
        //расставим доступность элементов
        if (arrEnableChanals[i].enabled) then
        begin
          Form1.cht22.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
          Form1.cht22.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
        end
        else
        begin
          Form1.cht22.Color:=clMedGray;
          Form1.cht22.Enabled:=false;
        end;
      end;
      23:
      begin
        //расставим доступность элементов
        if (arrEnableChanals[i].enabled) then
        begin
          Form1.cht23.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
          Form1.cht23.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
        end
        else
        begin
          Form1.cht23.Color:=clMedGray;
          Form1.cht23.Enabled:=false;
        end;
      end;
      24:
      begin
        //расставим доступность элементов
        if (arrEnableChanals[i].enabled) then
        begin
          Form1.cht24.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
          Form1.cht24.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
        end
        else
        begin
          Form1.cht24.Color:=clMedGray;
          Form1.cht24.Enabled:=false;
        end;
      end;
    end;
  end;
end;
//==============================================================================

procedure TForm1.changeFileClick(Sender: TObject);
var
  //строка с адресом выбранного каталога  с файлами скрута
  folderStr:string;
begin
  fileIndex:=0;
  //form1.FileNumTrack.Enabled:=true;
  //form1.TrackBar1.Enabled:=true;
  Form1.TrackBar1.Enabled:=False;
  Form1.FileNumTrack.Enabled:=False;
  Form1.TrackBar2.Enabled:=False;
  if SelectDirectory('Выберите каталог в котором лежат файлы-записи ИРУТ','\',folderStr) then
  begin
    //передаем функции полное имя выбранного каталога
    //формируем дин. массив с полными путями до файлов СКРУТЖТ соотв. заданной маске
    if FillFileArray(folderStr,SCRUTfileArr,allRecordSize) then
    begin
      //подготовка трекбара номера файла
      form1.FileNumTrack.Max:=length(SCRUTfileArr);
      form1.FileNumTrack.Min:=1;
      form1.FileNumTrack.Position:=1;
      //связываем с первым файлом массива
      openFileForIndex(fileIndex);
      //считаем коэф. масштабирования относительно текущего открытого файла
      trackSizeKoef:=trunc(stream.Size/POCKETSIZE/400000)+1;
      //масштабируем Трекбар
      form1.TrackBar1.Max:=trunc(stream.Size/POCKETSIZE/trackSizeKoef);
      //нач.скорость работы
      numPocketSp:=RTPOCKETNUM;
      ShowMessage('Выберите файл конфигурации!');
      while (true) do
      begin
        //выбрать файл конфигурации
        if form1.OpenDialog1.Execute then
        begin
          //доступность кнопки старта для работы дальше
          form1.StartButton.Enabled:=true;
          form1.changeFile.Enabled:=false;
          form1.Button4.Enabled:=true;
          //делаем текущий каталог каталогом по умолчанию
          form1.OpenDialog1.InitialDir := GetCurrentDir;
          //фильтр на выбор только типа ини
          form1.OpenDialog1.Filter :='INI|*.ini';
          //параметры конфигурации
          WriteConfParam(form1.OpenDialog1.FileName);

          //установка диапазона измерения на графиках каналов быстрых
          SetFastChDiaRange;

          //заполнение таблицы коэфициентов синусов и косинусов
          FillSinCosTables;
          break;
        end
        else
        begin
          ShowMessage('Ошибка! Файл конфигураций не выбран!');
          break;
        end;
      end;
    end
    else
    begin
      ShowMessage('Ошибка заполнения списка файлов ИРУТ');
      exit;
    end;
  end
  else
  begin
    ShowMessage('Каталог не выбран!');
  end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  //каждый проход таймера разбираем переданное колич пакетов
  ParsePocket(numPocketSp,changeFileFlag);
end;

procedure TForm1.StartButtonClick(Sender: TObject);
begin
  flag_P5V_M5V:=False;
  flP5V:=False;
  flM5V:=False;

  Form1.TrackBar2.Enabled:=true;
  form1.FileNumTrack.Enabled:=true;
  form1.TrackBar1.Enabled:=true;
  Form1.Button4.Enabled:=False;
  form1.StartButton.Enabled:=false;
  form1.StopButton.Enabled:=true;
  form1.Timer1.Enabled:=true;//начало разбора
end;

procedure TForm1.StopButtonClick(Sender: TObject);
begin
  Form1.TrackBar2.Enabled:=False;
  form1.FileNumTrack.Enabled:=false;
  form1.TrackBar1.Enabled:=false;
  Form1.Button4.Enabled:=true;
  form1.StartButton.Enabled:=true;
  form1.StopButton.Enabled:=false;
  form1.Timer1.Enabled:=false;
end;

procedure TForm1.Series1Click(Sender: TChartSeries; ValueIndex: Integer;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  iGist:=0;
  if (graphFlag) then
  begin
    form1.Chart2.Series[0].Clear;
    graphFlag:=false;
  end
  else
  begin
    graphFlag:=true;
    chanelIndex:=ValueIndex;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  excelFlag:=False;

  csk:=TCriticalSection.Create;
  //обнуление потока работы с файлом
  stream:=nil;
  //доступность кнопок
  form1.changeFile.Enabled:=true;
  form1.StartButton.Enabled:=false;
  form1.StopButton.Enabled:=false;
  form1.Button4.Enabled:=false;
  form1.FileNumTrack.Enabled:=false;
  form1.TrackBar1.Enabled:=false;
  //инициализация счетчика для масштабирования трекбара
  countTrack:=1;
  changeFileFlag:=true;
  graphFlag:=false;
  iGist:=0;
  chanelIndex:=0;
  //countPointInSpArr:=1;//счетчик для заполнения массива спектра
  //присваиваем разделитель целой и вещетвенной части числа точка.
  DecimalSeparator := '.';   //!!!
end;

//==============================================================================
//
//==============================================================================
procedure CheckToFileEnd;
begin
  if form1.TrackBar1.Position=form1.TrackBar1.Max-2 then
  begin
    form1.TrackBar1.Enabled:=false;
  end
  else
  begin
    form1.TrackBar1.Enabled:=true;
  end;
  if form1.TrackBar1.Position=form1.TrackBar1.Min+2 then
  begin
    form1.TrackBar1.Enabled:=false;
  end
  else
  begin
    form1.TrackBar1.Enabled:=true;
  end;
end;
//==============================================================================



procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  {flag_P5V_M5V:=False;
  flP5V:=False;
  flM5V:=False;}

  //контролируем выход за пределы конца файла
  CheckToFileEnd;
  //доступность кнопки останова разбора. Для случая когда ПО дойдет до конца файла
  form1.StopButton.Enabled:=true;
  form1.Timer1.Enabled:=false;
  //внесено изменение в позиции трекбара файла для правильонй выборки из файла
  stream.Position:=(form1.TrackBar1.Position-1)*POCKETSIZE*trackSizeKoef;
  form1.Timer1.Enabled:=true;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Stream.Free;

  if (excelFlag) then
  begin
    //проверяем запущен ли excel
    if (CheckExcelRun) then
    begin
      //запущен, вырубаем
      StopExcel;
    end;
  end;
  
  Application.Terminate;
end;

procedure TForm1.TrackBar2Change(Sender: TObject);
begin
  numPocketSp:=form1.TrackBar2.Position;
end;

procedure TForm1.FileNumTrackChange(Sender: TObject);
begin
  form1.Timer1.Enabled:=false;
  //освободили предидущий выполняемый поток
  stream.Free;
  //очищаем графики для более красивого перехода по файлам.
  ClearCharts;
  //form1.Chart1.Series[0].Clear;
  form1.Chart2.Series[0].Clear;
  //подготовка переменных для переключения
  countTrack:=1;
  iGist:=0;
  //связываем с выбранным файлом
  fileIndex:=form1.FileNumTrack.Position-1;
  openFileForIndex(fileIndex);
  //считаем коэф. масштабирования относительно текущего открытого файла
  trackSizeKoef:=trunc(stream.Size/POCKETSIZE/400000)+1;
  //масштабируем Трекбар
  form1.TrackBar1.Max:=trunc(stream.Size/POCKETSIZE/trackSizeKoef);
  changeFileFlag:=true;
  form1.Timer1.Enabled:=true;//запуск таймера
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  //сброс флагов завершения работы потока
  skoCompl:=false;
  gistCompl:=false;
  logCompl:=False;
  //сброс 
  Form1.gProgress1.Progress:=0;
  Form1.StartButton.Enabled:=False;
  Form1.StopButton.Enabled:=False;
  //записываем текущую дату и время.
  dateTimeBeg:=Now;
  //покажем форму с выбором проверок
  form2.Show;
end;



procedure TForm1.tmr1Timer(Sender: TObject);
var
  i:Integer;
  bool:Boolean;
begin
  bool:=True;
  for i:=1 to Form1.tmr1.Tag do
    begin
      if not arrEnbChannal[i] then
      begin
        bool:=False;
      end;
    end;
  if (bool) then
  begin
    //выключили таймер для завершения нужного потока
    Form1.tmr1.Enabled:=False;
    //Form1.Memo1.Lines.Add('Общий поток СКО завершен!');

    Form1.StartButton.Enabled:=true;
    Form1.StopButton.Enabled:=true;
    //Form1.gProgress1.Progress:=100;
    //проверки завершены
    //ShowMessage('Обработка завершена!');
    //обработали все файлы в рамках проверки
    skoCompl:=true;
    thWriteSKO.Free;
    exit;
  end;
end;

procedure TForm1.tmr2Timer(Sender: TObject);
var
  i:Integer;
  bool:Boolean;
begin
  bool:=True;
  for i:=1 to Form1.tmr2.Tag do
  begin
    if not arrEnbChannal[i] then
    begin
      bool:=False;
    end;
  end;
  if (bool) then
  begin
    //выключили таймер для завершения нужного потока
    Form1.tmr2.Enabled:=False;
    //Form1.Memo1.Lines.Add('Общий поток GIST завершен!');
    //запуск потока после завершения гистограммы
    if form2.chk2.Checked then
    begin
      thWriteSko.Resume;
    end;
    gistCompl:=true;
    thWriteGist.Free;
    exit;
  end;
end;

procedure TForm1.tmrEnd3Timer(Sender: TObject);
begin
  if (skoCompl)and(gistCompl)and(logCompl) then
  begin
    if Form1.gProgress1.Progress<100 then
    begin
      Form1.gProgress1.Progress:=100;
      //проверки завершены
      ShowMessage('Обработка завершена!');
      //сброс
      Form1.gProgress1.Progress:=0;
    end;
    //выключение таймера
    Form1.tmrEnd3.Enabled:=False;
  end;
end;


//==============================================================================
//
//==============================================================================
procedure OutToGi(vi:Integer);
  var
    i:integer;
begin
  i:=vi+1;
  case i of
    1:
    begin
      Form1.Chart2.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
      Form1.Chart2.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
    end;
    2:
    begin
      Form1.Chart2.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
      Form1.Chart2.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
    end;
    3:
    begin
      Form1.Chart2.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
      Form1.Chart2.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
    end;
    4:
    begin
      Form1.Chart2.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
      Form1.Chart2.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
    end;
    5:
    begin
      Form1.Chart2.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
      Form1.Chart2.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
    end;
    6:
    begin
      Form1.Chart2.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
      Form1.Chart2.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
    end;
    7:
    begin
      Form1.Chart2.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
      Form1.Chart2.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
    end;
    8:
    begin
      Form1.Chart2.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
      Form1.Chart2.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
    end;
    9:
    begin
      Form1.Chart2.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
      Form1.Chart2.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
    end;
    10:
    begin
      Form1.Chart2.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
      Form1.Chart2.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
    end;
    11:
    begin
      Form1.Chart2.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
      Form1.Chart2.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
    end;
    12:
    begin
      Form1.Chart2.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
      Form1.Chart2.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
    end;
    13:
    begin
      Form1.Chart2.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
      Form1.Chart2.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
    end;
    14:
    begin
      Form1.Chart2.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
      Form1.Chart2.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
    end;
    15:
    begin
      Form1.Chart2.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
      Form1.Chart2.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
    end;
    16:
    begin
      Form1.Chart2.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
      Form1.Chart2.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
    end;
    17:
    begin
      Form1.Chart2.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
      Form1.Chart2.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
    end;
    18:
    begin
      Form1.Chart2.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
      Form1.Chart2.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
    end;
    19:
    begin
      Form1.Chart2.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
      Form1.Chart2.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
    end;
    20:
    begin
      Form1.Chart2.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
      Form1.Chart2.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
    end;
    21:
    begin
      Form1.Chart2.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
      Form1.Chart2.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
    end;
    22:
    begin
      Form1.Chart2.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
      Form1.Chart2.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
    end;
    23:
    begin
      Form1.Chart2.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
      Form1.Chart2.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
    end;
    24:
    begin
      Form1.Chart2.LeftAxis.Minimum:=arrEnableChanals[i].begRange;
      Form1.Chart2.LeftAxis.Maximum:=arrEnableChanals[i].endRange;
    end;
  end;
  
  iGist:=0;
  if (graphFlag) then
  begin
    form1.Chart2.Series[0].Clear;
    graphFlag:=false;
  end
  else
  begin
    graphFlag:=true;
    chanelIndex:=vi;
  end;
end;
//==============================================================================


procedure TForm1.brsrs0Click(Sender: TChartSeries; ValueIndex: Integer;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  OutToGi(Form1.cht1.Tag);
end;

procedure TForm1.brsrs1Click(Sender: TChartSeries; ValueIndex: Integer;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  OutToGi(Form1.cht2.Tag);
end;

procedure TForm1.brsrs2Click(Sender: TChartSeries; ValueIndex: Integer;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  OutToGi(Form1.cht3.Tag);
end;

procedure TForm1.brsrs3Click(Sender: TChartSeries; ValueIndex: Integer;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  OutToGi(Form1.cht4.Tag);
end;

procedure TForm1.brsrs4Click(Sender: TChartSeries; ValueIndex: Integer;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  OutToGi(Form1.cht5.Tag);
end;

procedure TForm1.brsrs5Click(Sender: TChartSeries; ValueIndex: Integer;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  OutToGi(Form1.cht6.Tag);
end;

procedure TForm1.brsrs6Click(Sender: TChartSeries; ValueIndex: Integer;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  OutToGi(Form1.cht7.Tag);
end;

procedure TForm1.brsrs7Click(Sender: TChartSeries; ValueIndex: Integer;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  OutToGi(Form1.cht8.Tag);
end;

procedure TForm1.brsrs8Click(Sender: TChartSeries; ValueIndex: Integer;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  OutToGi(Form1.cht9.Tag);
end;

procedure TForm1.brsrs9Click(Sender: TChartSeries; ValueIndex: Integer;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  OutToGi(Form1.cht10.Tag);
end;

procedure TForm1.brsrs10Click(Sender: TChartSeries; ValueIndex: Integer;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  OutToGi(Form1.cht11.Tag);
end;

procedure TForm1.brsrs11Click(Sender: TChartSeries; ValueIndex: Integer;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  OutToGi(Form1.cht12.Tag);
end;

procedure TForm1.brsrs12Click(Sender: TChartSeries; ValueIndex: Integer;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  OutToGi(Form1.cht13.Tag);
end;

procedure TForm1.brsrs13Click(Sender: TChartSeries; ValueIndex: Integer;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  OutToGi(Form1.cht14.Tag);
end;

procedure TForm1.brsrs14Click(Sender: TChartSeries; ValueIndex: Integer;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  OutToGi(Form1.cht15.Tag);
end;

procedure TForm1.brsrs15Click(Sender: TChartSeries; ValueIndex: Integer;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  OutToGi(Form1.cht16.Tag);
end;

procedure TForm1.brsrs16Click(Sender: TChartSeries; ValueIndex: Integer;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  OutToGi(Form1.cht17.Tag);
end;

procedure TForm1.brsrs17Click(Sender: TChartSeries; ValueIndex: Integer;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  OutToGi(Form1.cht18.Tag);
end;

procedure TForm1.brsrs18Click(Sender: TChartSeries; ValueIndex: Integer;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  OutToGi(Form1.cht19.Tag);
end;

procedure TForm1.brsrs19Click(Sender: TChartSeries; ValueIndex: Integer;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  OutToGi(Form1.cht20.Tag);
end;

procedure TForm1.brsrs20Click(Sender: TChartSeries; ValueIndex: Integer;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  OutToGi(Form1.cht21.Tag);
end;

procedure TForm1.brsrs21Click(Sender: TChartSeries; ValueIndex: Integer;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  OutToGi(Form1.cht22.Tag);
end;

procedure TForm1.brsrs22Click(Sender: TChartSeries; ValueIndex: Integer;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  OutToGi(Form1.cht23.Tag);
end;

procedure TForm1.brsrs23Click(Sender: TChartSeries; ValueIndex: Integer;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  OutToGi(Form1.cht24.Tag);
end;

procedure TForm1.scalePClick(Sender: TObject);
begin
  form1.scaleM.Enabled := true;
  graphFlag:=false;
  if form1.Chart2.BottomAxis.Maximum <= form1.Chart2.BottomAxis.Minimum + 100 then
  begin
    form1.scaleP.Enabled := false
  end
  else
  begin
    form1.Chart2.BottomAxis.Maximum := form1.Chart2.BottomAxis.Maximum - 100;
  end;
  graphFlag:=true;
end;

procedure TForm1.scaleMClick(Sender: TObject);
begin
  graphFlag:=false;
  form1.scaleP.Enabled := true;
  form1.Chart2.BottomAxis.Maximum := form1.Chart2.BottomAxis.Maximum + 100;
  if form1.Chart2.BottomAxis.Maximum >= 32000 then
  begin
    form1.scaleM.Enabled := false;
  end;
  graphFlag:=true;
end;

end.
