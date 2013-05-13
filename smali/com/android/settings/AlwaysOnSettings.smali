.class public Lcom/android/settings/AlwaysOnSettings;
.super Landroid/preference/DialogPreference;
.source "AlwaysOnSettings.java"


# instance fields
.field private connectionDlg:Landroid/app/AlertDialog;

.field private iDataCon:Lcom/android/internal/telephony/ISkyDataConnection;

.field private mContext:Landroid/content/Context;

.field private mListView1:Landroid/widget/ListView;

.field private mListView2:Landroid/widget/ListView;

.field private mListener1:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListener2:Landroid/widget/AdapterView$OnItemClickListener;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private multiEntryID:I

.field private popupDlg:Landroid/app/AlertDialog;

.field private singleEntryID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const v0, 0x7f07004e

    iput v0, p0, Lcom/android/settings/AlwaysOnSettings;->singleEntryID:I

    .line 33
    const v0, 0x7f070050

    iput v0, p0, Lcom/android/settings/AlwaysOnSettings;->multiEntryID:I

    .line 37
    iput-object v1, p0, Lcom/android/settings/AlwaysOnSettings;->connectionDlg:Landroid/app/AlertDialog;

    .line 38
    iput-object v1, p0, Lcom/android/settings/AlwaysOnSettings;->popupDlg:Landroid/app/AlertDialog;

    .line 44
    new-instance v0, Lcom/android/settings/AlwaysOnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AlwaysOnSettings$1;-><init>(Lcom/android/settings/AlwaysOnSettings;)V

    iput-object v0, p0, Lcom/android/settings/AlwaysOnSettings;->mListener1:Landroid/widget/AdapterView$OnItemClickListener;

    .line 57
    new-instance v0, Lcom/android/settings/AlwaysOnSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/AlwaysOnSettings$2;-><init>(Lcom/android/settings/AlwaysOnSettings;)V

    iput-object v0, p0, Lcom/android/settings/AlwaysOnSettings;->mListener2:Landroid/widget/AdapterView$OnItemClickListener;

    .line 70
    iput-object p1, p0, Lcom/android/settings/AlwaysOnSettings;->mContext:Landroid/content/Context;

    .line 71
    const-string v0, "iskydataconnection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISkyDataConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISkyDataConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AlwaysOnSettings;->iDataCon:Lcom/android/internal/telephony/ISkyDataConnection;

    .line 74
    iget-object v0, p0, Lcom/android/settings/AlwaysOnSettings;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/settings/AlwaysOnSettings;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AlwaysOnSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/settings/AlwaysOnSettings;->setAlwaysOnValue(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/AlwaysOnSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/settings/AlwaysOnSettings;->setAlwaysOnValuePopup(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/AlwaysOnSettings;)Landroid/app/StatusBarManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings/AlwaysOnSettings;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/AlwaysOnSettings;)Lcom/android/internal/telephony/ISkyDataConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings/AlwaysOnSettings;->iDataCon:Lcom/android/internal/telephony/ISkyDataConnection;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/AlwaysOnSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/settings/AlwaysOnSettings;->connectionDlg:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/settings/AlwaysOnSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/settings/AlwaysOnSettings;->popupDlg:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private refreshStatus()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 152
    const/4 v1, 0x1

    .line 153
    .local v1, isDataEnabled:Z
    const/4 v2, 0x1

    .line 155
    .local v2, isPopupEnabled:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/AlwaysOnSettings;->iDataCon:Lcom/android/internal/telephony/ISkyDataConnection;

    if-eqz v3, :cond_0

    .line 156
    iget-object v3, p0, Lcom/android/settings/AlwaysOnSettings;->iDataCon:Lcom/android/internal/telephony/ISkyDataConnection;

    invoke-interface {v3}, Lcom/android/internal/telephony/ISkyDataConnection;->getDataConnectionMode()Z

    move-result v1

    .line 157
    iget-object v3, p0, Lcom/android/settings/AlwaysOnSettings;->iDataCon:Lcom/android/internal/telephony/ISkyDataConnection;

    invoke-interface {v3}, Lcom/android/internal/telephony/ISkyDataConnection;->getDataConnectivityPopup()Z

    move-result v2

    .line 159
    :cond_0
    const-string v3, "DATA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AlwaysOnSetting] refreshStatus, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    if-eqz v1, :cond_1

    .line 166
    iget-object v3, p0, Lcom/android/settings/AlwaysOnSettings;->mListView1:Landroid/widget/ListView;

    invoke-virtual {v3, v7, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 170
    :goto_1
    iget-object v3, p0, Lcom/android/settings/AlwaysOnSettings;->mListView2:Landroid/widget/ListView;

    invoke-virtual {v3, v7, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 171
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "DATA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AlwaysOnSettings refreshStatus failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/AlwaysOnSettings;->mListView1:Landroid/widget/ListView;

    invoke-virtual {v3, v6, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_1
.end method

.method private resultAlertDlg(III)V
    .locals 3
    .parameter "dataSettingValue"
    .parameter "title"
    .parameter "alertMsg"

    .prologue
    .line 204
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/AlwaysOnSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 206
    .local v0, alertDlg:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 207
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 209
    const v1, 0x7f0b080c

    new-instance v2, Lcom/android/settings/AlwaysOnSettings$5;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/AlwaysOnSettings$5;-><init>(Lcom/android/settings/AlwaysOnSettings;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 237
    const v1, 0x7f0b080d

    new-instance v2, Lcom/android/settings/AlwaysOnSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/AlwaysOnSettings$6;-><init>(Lcom/android/settings/AlwaysOnSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/AlwaysOnSettings;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 247
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AlwaysOnSettings;->connectionDlg:Landroid/app/AlertDialog;

    .line 248
    return-void
.end method

.method private resultAlertDlgPopup(II)V
    .locals 3
    .parameter "title"
    .parameter "alertMsg"

    .prologue
    .line 252
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/AlwaysOnSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 254
    .local v0, alertDlg:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 255
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 257
    const v1, 0x7f0b080b

    new-instance v2, Lcom/android/settings/AlwaysOnSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/AlwaysOnSettings$7;-><init>(Lcom/android/settings/AlwaysOnSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 263
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AlwaysOnSettings;->popupDlg:Landroid/app/AlertDialog;

    .line 264
    return-void
.end method

.method private setAlwaysOnValue(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 174
    const v1, 0x7f0b0807

    .line 175
    .local v1, title:I
    const/4 v0, -0x1

    .line 177
    .local v0, ret_msg:I
    if-eqz p1, :cond_0

    .line 178
    const v0, 0x7f0b0808

    .line 179
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1, v0}, Lcom/android/settings/AlwaysOnSettings;->resultAlertDlg(III)V

    .line 184
    :goto_0
    return-void

    .line 181
    :cond_0
    const v0, 0x7f0b0809

    .line 182
    const/4 v2, 0x1

    invoke-direct {p0, v2, v1, v0}, Lcom/android/settings/AlwaysOnSettings;->resultAlertDlg(III)V

    goto :goto_0
.end method

.method private setAlwaysOnValuePopup(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 187
    const v2, 0x7f0b0807

    .line 188
    .local v2, title:I
    const/4 v1, -0x1

    .line 190
    .local v1, ret_msg:I
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/AlwaysOnSettings;->iDataCon:Lcom/android/internal/telephony/ISkyDataConnection;

    if-eqz v3, :cond_0

    .line 191
    iget-object v3, p0, Lcom/android/settings/AlwaysOnSettings;->iDataCon:Lcom/android/internal/telephony/ISkyDataConnection;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ISkyDataConnection;->setDataConnectivityPopup(Z)V

    .line 193
    :cond_0
    if-eqz p1, :cond_1

    .line 194
    const v1, 0x7f0b080a

    .line 195
    invoke-direct {p0, v2, v1}, Lcom/android/settings/AlwaysOnSettings;->resultAlertDlgPopup(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_1
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DATA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAlwaysOnValuePopup failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 104
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 9
    .parameter "builder"

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 108
    iget-object v0, p0, Lcom/android/settings/AlwaysOnSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f040004

    invoke-virtual {v0, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 112
    .local v1, layout:Landroid/widget/LinearLayout;
    const v0, 0x7f080006

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/AlwaysOnSettings;->mListView1:Landroid/widget/ListView;

    .line 113
    iget-object v0, p0, Lcom/android/settings/AlwaysOnSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/AlwaysOnSettings;->singleEntryID:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    .line 114
    .local v6, entries1:[Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/settings/AlwaysOnSettings;->mListView1:Landroid/widget/ListView;

    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/settings/AlwaysOnSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f040006

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/AlwaysOnSettings;->mListView1:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/AlwaysOnSettings;->mListener1:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 117
    const v0, 0x7f080007

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/AlwaysOnSettings;->mListView2:Landroid/widget/ListView;

    .line 118
    iget-object v0, p0, Lcom/android/settings/AlwaysOnSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/AlwaysOnSettings;->multiEntryID:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v7

    .line 119
    .local v7, entries2:[Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/settings/AlwaysOnSettings;->mListView2:Landroid/widget/ListView;

    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/settings/AlwaysOnSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f040005

    invoke-direct {v3, v4, v5, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/AlwaysOnSettings;->mListView2:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/AlwaysOnSettings;->mListener2:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 122
    invoke-direct {p0}, Lcom/android/settings/AlwaysOnSettings;->refreshStatus()V

    move-object v0, p1

    move v3, v2

    move v4, v2

    move v5, v2

    .line 124
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 125
    new-instance v0, Lcom/android/settings/AlwaysOnSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/AlwaysOnSettings$3;-><init>(Lcom/android/settings/AlwaysOnSettings;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 134
    const v0, 0x7f0b080b

    new-instance v2, Lcom/android/settings/AlwaysOnSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/AlwaysOnSettings$4;-><init>(Lcom/android/settings/AlwaysOnSettings;)V

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 142
    invoke-virtual {p1, v8, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 145
    iget-object v0, p0, Lcom/android/settings/AlwaysOnSettings;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 148
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 149
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/AlwaysOnSettings;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/settings/AlwaysOnSettings;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 99
    :cond_0
    return-void
.end method
