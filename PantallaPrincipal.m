function varargout = PantallaPrincipal(varargin)
% PANTALLAPRINCIPAL MATLAB code for PantallaPrincipal.fig
%      PANTALLAPRINCIPAL, by itself, creates a new PANTALLAPRINCIPAL or raises the existing
%      singleton*.
%
%      H = PANTALLAPRINCIPAL returns the handle to a new PANTALLAPRINCIPAL or the handle to
%      the existing singleton*.
%
%      PANTALLAPRINCIPAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PANTALLAPRINCIPAL.M with the given input arguments.
%
%      PANTALLAPRINCIPAL('Property','Value',...) creates a new PANTALLAPRINCIPAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PantallaPrincipal_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PantallaPrincipal_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PantallaPrincipal

% Last Modified by GUIDE v2.5 27-Aug-2024 10:23:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PantallaPrincipal_OpeningFcn, ...
                   'gui_OutputFcn',  @PantallaPrincipal_OutputFcn, ...
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


% --- Executes just before PantallaPrincipal is made visible.
function PantallaPrincipal_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PantallaPrincipal (see VARARGIN)

% Choose default command line output for PantallaPrincipal
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PantallaPrincipal wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = PantallaPrincipal_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
event_based13;

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

event_based_wos;
% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
space_statev1;

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Lyapunov1;


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Mostrar un mensaje de informacion
version = '1.9';
fecha = '2024-08-25';

men = sprintf('Desarrollado por:\n\nJorge Nava\nCristhian Apaza Flores\nKarel Gomez Orellana\n\nVersión: %s\nFecha: %s', version, fecha);
msgbox(men, 'Acerca de', 'help');
