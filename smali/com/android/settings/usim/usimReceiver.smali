.class public Lcom/android/settings/usim/usimReceiver;
.super Landroid/content/BroadcastReceiver;
.source "usimReceiver.java"


# static fields
.field private static bReceivedLocale:Z

.field private static bReceivedReady:Z

.field private static isReadEF:Z

.field private static skyUSimContacts:Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;


# instance fields
.field private mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 76
    sput-boolean v2, Lcom/android/settings/usim/usimReceiver;->isReadEF:Z

    .line 78
    sput-boolean v2, Lcom/android/settings/usim/usimReceiver;->bReceivedReady:Z

    .line 79
    sput-boolean v2, Lcom/android/settings/usim/usimReceiver;->bReceivedLocale:Z

    .line 82
    const/4 v2, 0x0

    sput-object v2, Lcom/android/settings/usim/usimReceiver;->skyUSimContacts:Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;

    .line 87
    :try_start_0
    const-string v2, "com.pantech.providers.skyusimcontacts.impl.SkyUSimContactsImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 88
    .local v1, skyUSimContactsClass:Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;

    sput-object v2, Lcom/android/settings/usim/usimReceiver;->skyUSimContacts:Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 99
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, ex:Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "com.pantech.providers.skyusimcontacts.impl.SkyUSimContactsImpl could not be loaded"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 92
    .end local v0           #ex:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 93
    .local v0, ex:Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "com.pantech.providers.skyusimcontacts.impl.SkyUSimContactsImpl could not be instantiated"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 95
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 96
    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "com.pantech.providers.skyusimcontacts.impl.SkyUSimContactsImpl could not be instantiated"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private IsinSetupWizard(Landroid/content/Context;)Z
    .locals 4
    .parameter "mContext"

    .prologue
    const/4 v1, 0x0

    .line 395
    const/4 v0, 0x0

    .line 397
    .local v0, bResult:Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 398
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsinSetupWizard(). bResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 400
    return v0

    :cond_0
    move v0, v1

    .line 397
    goto :goto_0
.end method

.method private changeLanguage(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .parameter "strLang"
    .parameter "context"

    .prologue
    .line 587
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeLanguage strLang = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 592
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 593
    .local v3, language:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default Locale Language is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 594
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default Locale Country is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 596
    sget-object v4, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 598
    :cond_0
    const-string v4, "ko_KR"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 600
    const-string v4, "No Change"

    invoke-virtual {p0, v4}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 646
    .end local v3           #language:Ljava/lang/String;
    :goto_0
    return-void

    .line 604
    .restart local v3       #language:Ljava/lang/String;
    :cond_1
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 606
    const-string v4, "en_US"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 608
    const-string v4, "No Change"

    invoke-virtual {p0, v4}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 642
    .end local v3           #language:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 644
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 625
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v3       #language:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 626
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 627
    .local v1, config:Landroid/content/res/Configuration;
    const-string v4, "ko_KR"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 628
    sget-object v4, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    iput-object v4, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 638
    :cond_3
    :goto_1
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 639
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 640
    const-string v4, "com.android.providers.settings"

    invoke-static {v4}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 629
    :cond_4
    const-string v4, "en_US"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 631
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    iput-object v4, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private checkUsimLanguage(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/16 v11, 0x72

    const/16 v10, 0x6f

    const/16 v9, 0x6e

    const/16 v8, 0x65

    const/16 v7, 0x6b

    .line 408
    invoke-direct {p0, p1}, Lcom/android/settings/usim/usimReceiver;->IsinSetupWizard(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 409
    const-string v5, "checkUsimLanguage() is not performed because in SetupWizard."

    invoke-virtual {p0, v5}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 580
    :goto_0
    return-void

    .line 414
    :cond_0
    const-string v5, "iskytelephony"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    .line 416
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/gsm/SkyUsim;->isUsimCard()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 418
    const-string v5, "USIM Mode"

    invoke-virtual {p0, v5}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 419
    iget-object v5, p0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    const/16 v6, 0x6f05

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->loadEFTransparent(I)[B

    move-result-object v0

    .line 420
    .local v0, LangList:[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkUsimLanguage()-EF_LI :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 421
    if-eqz v0, :cond_5

    .line 422
    const/4 v3, 0x0

    .local v3, nIndex:I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_5

    .line 424
    aget-byte v5, v0, v3

    if-ne v5, v7, :cond_1

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v0, v5

    if-eq v5, v11, :cond_2

    :cond_1
    aget-byte v5, v0, v3

    if-ne v5, v7, :cond_3

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v0, v5

    if-ne v5, v10, :cond_3

    .line 427
    :cond_2
    const-string v5, " language change KO From LI"

    invoke-virtual {p0, v5}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 428
    const-string v5, "ko_KR"

    invoke-direct {p0, v5, p1}, Lcom/android/settings/usim/usimReceiver;->changeLanguage(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 577
    .end local v0           #LangList:[B
    .end local v3           #nIndex:I
    :catch_0
    move-exception v4

    .line 578
    .local v4, re:Landroid/os/RemoteException;
    const-string v5, "checkUsimLanguage() ERROR"

    invoke-virtual {p0, v5}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 431
    .end local v4           #re:Landroid/os/RemoteException;
    .restart local v0       #LangList:[B
    .restart local v3       #nIndex:I
    :cond_3
    :try_start_1
    aget-byte v5, v0, v3

    if-ne v5, v8, :cond_4

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v0, v5

    if-ne v5, v9, :cond_4

    .line 433
    const-string v5, " language change EN From LI"

    invoke-virtual {p0, v5}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 434
    const-string v5, "en_US"

    invoke-direct {p0, v5, p1}, Lcom/android/settings/usim/usimReceiver;->changeLanguage(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 422
    :cond_4
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 450
    .end local v3           #nIndex:I
    :cond_5
    iget-object v5, p0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    const/16 v6, 0x2f05

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->loadEFTransparent(I)[B

    move-result-object v1

    .line 451
    .local v1, PL_List:[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkUsimLanguage()-EF_PL :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 452
    if-eqz v1, :cond_14

    .line 454
    const/4 v3, 0x0

    .restart local v3       #nIndex:I
    :goto_2
    array-length v5, v1

    if-ge v3, v5, :cond_a

    .line 456
    aget-byte v5, v1, v3

    if-ne v5, v7, :cond_6

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v1, v5

    if-eq v5, v11, :cond_7

    :cond_6
    aget-byte v5, v1, v3

    if-ne v5, v7, :cond_8

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v1, v5

    if-ne v5, v10, :cond_8

    .line 459
    :cond_7
    const-string v5, " language change KO From PL"

    invoke-virtual {p0, v5}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 460
    const-string v5, "ko_KR"

    invoke-direct {p0, v5, p1}, Lcom/android/settings/usim/usimReceiver;->changeLanguage(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 463
    :cond_8
    aget-byte v5, v1, v3

    if-ne v5, v8, :cond_9

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v1, v5

    if-ne v5, v9, :cond_9

    .line 465
    const-string v5, " language change EN From PL"

    invoke-virtual {p0, v5}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 466
    const-string v5, "en_US"

    invoke-direct {p0, v5, p1}, Lcom/android/settings/usim/usimReceiver;->changeLanguage(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 454
    :cond_9
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 481
    :cond_a
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "K"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 484
    const-string v5, " language change EN as default"

    invoke-virtual {p0, v5}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 485
    const-string v5, "en_US"

    invoke-direct {p0, v5, p1}, Lcom/android/settings/usim/usimReceiver;->changeLanguage(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 491
    .end local v0           #LangList:[B
    .end local v1           #PL_List:[B
    .end local v3           #nIndex:I
    :cond_b
    const-string v5, "GSM Mode"

    invoke-virtual {p0, v5}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 492
    iget-object v5, p0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    const/16 v6, 0x2f05

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->loadEFTransparent(I)[B

    move-result-object v1

    .line 493
    .restart local v1       #PL_List:[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkUsimLanguage()-EF_PL :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 494
    if-eqz v1, :cond_10

    .line 495
    const/4 v3, 0x0

    .restart local v3       #nIndex:I
    :goto_3
    array-length v5, v1

    if-ge v3, v5, :cond_10

    .line 497
    aget-byte v5, v1, v3

    if-ne v5, v7, :cond_c

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v1, v5

    if-eq v5, v11, :cond_d

    :cond_c
    aget-byte v5, v1, v3

    if-ne v5, v7, :cond_e

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v1, v5

    if-ne v5, v10, :cond_e

    .line 500
    :cond_d
    const-string v5, " language change KO From PL"

    invoke-virtual {p0, v5}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 501
    const-string v5, "ko_KR"

    invoke-direct {p0, v5, p1}, Lcom/android/settings/usim/usimReceiver;->changeLanguage(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 504
    :cond_e
    aget-byte v5, v1, v3

    if-ne v5, v8, :cond_f

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v1, v5

    if-ne v5, v9, :cond_f

    .line 506
    const-string v5, " language change EN From PL"

    invoke-virtual {p0, v5}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 507
    const-string v5, "en_US"

    invoke-direct {p0, v5, p1}, Lcom/android/settings/usim/usimReceiver;->changeLanguage(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 495
    :cond_f
    add-int/lit8 v3, v3, 0x2

    goto :goto_3

    .line 523
    .end local v3           #nIndex:I
    :cond_10
    iget-object v5, p0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    const/16 v6, 0x6f05

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->loadEFTransparent(I)[B

    move-result-object v0

    .line 524
    .restart local v0       #LangList:[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkUsimLanguage()-EF_LI :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 525
    if-eqz v0, :cond_14

    .line 526
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    array-length v5, v0

    if-ge v2, v5, :cond_13

    .line 528
    aget-byte v5, v0, v2

    const/16 v6, 0x25

    if-ne v5, v6, :cond_11

    .line 529
    const-string v5, " language change KO From LangList"

    invoke-virtual {p0, v5}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 530
    const-string v5, "ko_KR"

    invoke-direct {p0, v5, p1}, Lcom/android/settings/usim/usimReceiver;->changeLanguage(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 533
    :cond_11
    aget-byte v5, v0, v2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_12

    .line 535
    const-string v5, " language change EN From LangList"

    invoke-virtual {p0, v5}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 536
    const-string v5, "en_US"

    invoke-direct {p0, v5, p1}, Lcom/android/settings/usim/usimReceiver;->changeLanguage(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 526
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 551
    :cond_13
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "K"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 554
    const-string v5, " language change EN as default"

    invoke-virtual {p0, v5}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 555
    const-string v5, "en_US"

    invoke-direct {p0, v5, p1}, Lcom/android/settings/usim/usimReceiver;->changeLanguage(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 561
    .end local v2           #i:I
    :cond_14
    const-string v5, " Exception Case"

    invoke-virtual {p0, v5}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private updateSimLang(Ljava/util/Locale;)V
    .locals 16
    .parameter "locale"

    .prologue
    .line 191
    const-string v13, "updateSimLang"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 192
    const-string v13, "iskytelephony"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    .line 196
    const/4 v11, 0x0

    .line 197
    .local v11, lenLangStr:I
    const/4 v12, 0x0

    .line 200
    .local v12, lenWriteStr:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    if-nez v13, :cond_1

    .line 201
    const-string v13, "usimReceiver"

    const-string v14, "mPhone is null, So quit updateSimLang()"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/gsm/SkyUsim;->isUsimCard()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 207
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    const/16 v14, 0x6f05

    invoke-interface {v13, v14}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->loadEFTransparent(I)[B

    move-result-object v1

    .line 208
    .local v1, LangList:[B
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSimLang() case1:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 209
    if-eqz v1, :cond_3

    .line 211
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, LangStr:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    .line 223
    sget-object v13, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 225
    sget-object v13, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v14, "K"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 226
    const-string v7, "6b72"

    .line 229
    .local v7, WriteStr:Ljava/lang/String;
    :goto_1
    const-string v13, "6b6f"

    const-string v14, ""

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 230
    const-string v13, "6b72"

    const-string v14, ""

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    :goto_2
    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 250
    const-string v13, "usimReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateSimLang() before WriteStr:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    .line 253
    if-le v12, v11, :cond_2

    .line 255
    const/4 v13, 0x0

    invoke-virtual {v7, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 258
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSimLang() after WriteStr:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    const/16 v14, 0x6f05

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->updateEFTransparent(I[B)V

    .line 318
    .end local v2           #LangStr:Ljava/lang/String;
    .end local v7           #WriteStr:Ljava/lang/String;
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    const/16 v14, 0x2f05

    invoke-interface {v13, v14}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->loadEFTransparent(I)[B

    move-result-object v5

    .line 319
    .local v5, PL_List:[B
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSimLang() PL_List:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 320
    if-eqz v5, :cond_0

    .line 322
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 324
    .local v3, PLStr:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    .line 334
    sget-object v13, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 336
    sget-object v13, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v14, "K"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 337
    const-string v4, "6b72"

    .line 340
    .local v4, PLWriteStr:Ljava/lang/String;
    :goto_4
    const-string v13, "6b6f"

    const-string v14, ""

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 341
    const-string v13, "6b72"

    const-string v14, ""

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 360
    :goto_5
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 361
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSimLang() before PLWriteStr :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    .line 364
    if-le v12, v11, :cond_4

    .line 366
    const/4 v13, 0x0

    invoke-virtual {v4, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 369
    :cond_4
    const-string v13, "usimReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateSimLang() after PLWriteStr :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    const/16 v14, 0x2f05

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->updateEFTransparent(I[B)V

    goto/16 :goto_0

    .line 372
    .end local v1           #LangList:[B
    .end local v3           #PLStr:Ljava/lang/String;
    .end local v4           #PLWriteStr:Ljava/lang/String;
    .end local v5           #PL_List:[B
    :catch_0
    move-exception v13

    goto/16 :goto_0

    .line 228
    .restart local v1       #LangList:[B
    .restart local v2       #LangStr:Ljava/lang/String;
    :cond_5
    const-string v7, "6b6f"

    .restart local v7       #WriteStr:Ljava/lang/String;
    goto/16 :goto_1

    .line 232
    .end local v7           #WriteStr:Ljava/lang/String;
    :cond_6
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 234
    const-string v7, "656e"

    .line 235
    .restart local v7       #WriteStr:Ljava/lang/String;
    const-string v13, ""

    invoke-virtual {v2, v7, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 264
    .end local v1           #LangList:[B
    .end local v2           #LangStr:Ljava/lang/String;
    .end local v7           #WriteStr:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    const/16 v14, 0x6f05

    invoke-interface {v13, v14}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->loadEFTransparent(I)[B

    move-result-object v1

    .line 265
    .restart local v1       #LangList:[B
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSimLang() case2:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 266
    if-eqz v1, :cond_3

    .line 270
    sget-object v13, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 272
    const/16 v6, 0x25

    .line 289
    .local v6, WriteCode:B
    :goto_6
    const/4 v9, 0x0

    .local v9, i:I
    :goto_7
    array-length v13, v1

    if-ge v9, v13, :cond_c

    .line 293
    aget-byte v13, v1, v9

    if-ne v13, v6, :cond_9

    .line 296
    move v10, v9

    .line 298
    .local v10, j:I
    :cond_8
    array-length v13, v1

    add-int/lit8 v13, v13, -0x1

    if-ge v10, v13, :cond_b

    add-int/lit8 v13, v10, 0x1

    aget-byte v13, v1, v13

    aput-byte v13, v1, v10

    .line 300
    :goto_8
    add-int/lit8 v10, v10, 0x1

    .line 301
    array-length v13, v1

    if-lt v10, v13, :cond_8

    .line 289
    .end local v10           #j:I
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 274
    .end local v6           #WriteCode:B
    .end local v9           #i:I
    :cond_a
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 276
    const/4 v6, 0x1

    .restart local v6       #WriteCode:B
    goto :goto_6

    .line 299
    .restart local v9       #i:I
    .restart local v10       #j:I
    :cond_b
    const/4 v13, -0x1

    aput-byte v13, v1, v10

    goto :goto_8

    .line 304
    .end local v10           #j:I
    :cond_c
    array-length v13, v1

    new-array v8, v13, [B

    .line 307
    .local v8, Write_Array:[B
    const/4 v13, 0x0

    aput-byte v6, v8, v13

    .line 309
    const/4 v9, 0x1

    :goto_9
    array-length v13, v8

    if-ge v9, v13, :cond_d

    .line 311
    add-int/lit8 v13, v9, -0x1

    aget-byte v13, v1, v13

    aput-byte v13, v8, v9

    .line 309
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 313
    :cond_d
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSimLang() Write_Array:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    const/16 v14, 0x6f05

    invoke-interface {v13, v14, v8}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->updateEFTransparent(I[B)V

    goto/16 :goto_3

    .line 339
    .end local v6           #WriteCode:B
    .end local v8           #Write_Array:[B
    .end local v9           #i:I
    .restart local v3       #PLStr:Ljava/lang/String;
    .restart local v5       #PL_List:[B
    :cond_e
    const-string v4, "6b6f"

    .restart local v4       #PLWriteStr:Ljava/lang/String;
    goto/16 :goto_4

    .line 343
    .end local v4           #PLWriteStr:Ljava/lang/String;
    :cond_f
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 345
    const-string v4, "656e"

    .line 346
    .restart local v4       #PLWriteStr:Ljava/lang/String;
    const-string v13, ""

    invoke-virtual {v3, v4, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto/16 :goto_5
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 650
    const-string v0, "usimReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[usimReceiver] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 103
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, action:Ljava/lang/String;
    const-string v7, "com.android.settings.action.ISUSIMREADING"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "gcf_test_mode"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_4

    move v2, v5

    .line 114
    .local v2, gcfmode:Z
    :goto_0
    sget-object v7, Lcom/android/settings/usim/usimReceiver;->skyUSimContacts:Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;

    sget-object v8, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->CHECKLOAD_URI:Landroid/net/Uri;

    invoke-interface {v7, p1, v8}, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->getUSIMInfo(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    .line 115
    .local v1, checkLoad:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ISUSIMREADING = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 121
    if-nez v2, :cond_5

    if-eq v1, v5, :cond_0

    const/4 v7, 0x2

    if-ne v1, v7, :cond_5

    .line 124
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b07fe

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 127
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.android.settings.action.USIMREADINGNOTDONE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v4, usimintent:Landroid/content/Intent;
    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 142
    .end local v1           #checkLoad:I
    .end local v2           #gcfmode:Z
    .end local v4           #usimintent:Landroid/content/Intent;
    :cond_1
    :goto_1
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 144
    const-string v7, "ss"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, stateExtra:Ljava/lang/String;
    const-string v7, "LOCKED"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 147
    sput-boolean v5, Lcom/android/settings/usim/usimReceiver;->isReadEF:Z

    .line 148
    const-string v6, "Locked & Lock Event"

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 149
    invoke-direct {p0, p1}, Lcom/android/settings/usim/usimReceiver;->checkUsimLanguage(Landroid/content/Context;)V

    .line 150
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isReadEF in LOCKED : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/settings/usim/usimReceiver;->isReadEF:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 173
    .end local v3           #stateExtra:Ljava/lang/String;
    :cond_2
    :goto_2
    const-string v6, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 175
    const-string v6, "Received ACTION_LOCALE_CHANGED"

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 176
    invoke-direct {p0, p1}, Lcom/android/settings/usim/usimReceiver;->IsinSetupWizard(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 177
    sget-boolean v6, Lcom/android/settings/usim/usimReceiver;->bReceivedReady:Z

    if-eqz v6, :cond_8

    .line 179
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/usim/usimReceiver;->updateSimLang(Ljava/util/Locale;)V

    .line 185
    :cond_3
    :goto_3
    return-void

    :cond_4
    move v2, v6

    .line 112
    goto/16 :goto_0

    .line 132
    .restart local v1       #checkLoad:I
    .restart local v2       #gcfmode:Z
    :cond_5
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.android.settings.action.USIMREADINGDONE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .restart local v4       #usimintent:Landroid/content/Intent;
    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 152
    .end local v1           #checkLoad:I
    .end local v2           #gcfmode:Z
    .end local v4           #usimintent:Landroid/content/Intent;
    .restart local v3       #stateExtra:Ljava/lang/String;
    :cond_6
    const-string v7, "READY"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 154
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isReadEF in READY : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/settings/usim/usimReceiver;->isReadEF:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 155
    sput-boolean v5, Lcom/android/settings/usim/usimReceiver;->bReceivedReady:Z

    .line 156
    sget-boolean v7, Lcom/android/settings/usim/usimReceiver;->isReadEF:Z

    if-nez v7, :cond_2

    .line 158
    const-string v7, "unLocked & Ready Event"

    invoke-virtual {p0, v7}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 160
    sget-boolean v7, Lcom/android/settings/usim/usimReceiver;->bReceivedLocale:Z

    if-eqz v7, :cond_7

    .line 161
    sput-boolean v6, Lcom/android/settings/usim/usimReceiver;->bReceivedLocale:Z

    .line 163
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/usim/usimReceiver;->updateSimLang(Ljava/util/Locale;)V

    goto :goto_2

    .line 166
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/settings/usim/usimReceiver;->checkUsimLanguage(Landroid/content/Context;)V

    goto :goto_2

    .line 181
    .end local v3           #stateExtra:Ljava/lang/String;
    :cond_8
    sput-boolean v5, Lcom/android/settings/usim/usimReceiver;->bReceivedLocale:Z

    goto :goto_3
.end method
