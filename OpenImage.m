function varargout = Tugas1(varargin)
% TUGAS1 MATLAB code for Tugas1.fig
%      TUGAS1, by itself, creates a new TUGAS1 or raises the existing
%      singleton*.
%
%      H = TUGAS1 returns the handle to a new TUGAS1 or the handle to
%      the existing singleton*.
%
%      TUGAS1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TUGAS1.M with the given input arguments.
%
%      TUGAS1('Property','Value',...) creates a new TUGAS1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Tugas1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Tugas1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Tugas1

% Last Modified by GUIDE v2.5 02-Feb-2018 14:18:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Tugas1_OpeningFcn, ...
                   'gui_OutputFcn',  @Tugas1_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Tugas1 is made visible.
function Tugas1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Tugas1 (see VARARGIN)

% Choose default command line output for Tugas1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Tugas1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Tugas1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btnbrowse.
function btnbrowse_Callback(hObject, eventdata, handles)
% hObject    handle to btnbrowse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[namafile, formatfile] = uigetfile({'*.jpg','*.png'}, 'Pilih Gambar'); %memilih gambar
image = imread([formatfile, namafile]); %membaca gambar
guidata(hObject, handles);
axes(handles.axes1); %memilih plotori sebagai letak gambar yang dimunculkan
imshow(image); %memunculkan gambar
