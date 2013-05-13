.class public Lcom/android/settings/gpstest/GpsSimpleTest;
.super Landroid/app/Activity;
.source "GpsSimpleTest.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;
.implements Landroid/location/LocationListener;


# static fields
.field private static isForcedEnable:Z

.field private static mPrvidersEnabled:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCnoMeasView:Landroid/widget/TextView;

.field private mFixFrequency:I

.field private mLastLocation:Landroid/location/Location;

.field private mLatitudeView:Landroid/widget/TextView;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLongitudeView:Landroid/widget/TextView;

.field mNavigating:Z

.field private mPrns:[I

.field private mProvider:Landroid/location/LocationProvider;

.field private mSnrs:[F

.field mStarted:Z

.field private mStatus:Landroid/location/GpsStatus;

.field private mSvCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/gpstest/GpsSimpleTest;->isForcedEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mFixFrequency:I

    return-void
.end method

.method private static doubleToString(DI)Ljava/lang/String;
    .locals 4
    .parameter "value"
    .parameter "decimals"

    .prologue
    .line 132
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, result:Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 135
    .local v0, dot:I
    if-lez v0, :cond_0

    .line 137
    add-int v3, v0, p2

    add-int/lit8 v1, v3, 0x1

    .line 138
    .local v1, end:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 140
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 143
    .end local v1           #end:I
    :cond_0
    return-object v2
.end method

.method private gpsStart()V
    .locals 6

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mProvider:Landroid/location/LocationProvider;

    invoke-virtual {v1}, Landroid/location/LocationProvider;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mFixFrequency:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mStarted:Z

    .line 173
    return-void
.end method

.method private gpsStop()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mStarted:Z

    .line 179
    return-void
.end method

.method private updateStatelliteStatus(Landroid/location/GpsStatus;)V
    .locals 9
    .parameter "status"

    .prologue
    const/4 v8, 0x0

    .line 188
    invoke-virtual {p1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 190
    .local v4, satellites:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/location/GpsSatellite;>;"
    iget-object v5, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mPrns:[I

    if-nez v5, :cond_0

    .line 192
    invoke-virtual {p1}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v0

    .line 193
    .local v0, length:I
    new-array v5, v0, [I

    iput-object v5, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mPrns:[I

    .line 194
    new-array v5, v0, [F

    iput-object v5, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mSnrs:[F

    .line 198
    .end local v0           #length:I
    :cond_0
    iput v8, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mSvCount:I

    .line 199
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 201
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GpsSatellite;

    .line 202
    .local v3, satellite:Landroid/location/GpsSatellite;
    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v1

    .line 203
    .local v1, prn:I
    const/4 v5, 0x1

    add-int/lit8 v6, v1, -0x1

    shl-int v2, v5, v6

    .line 204
    .local v2, prnBit:I
    iget-object v5, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mPrns:[I

    iget v6, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mSvCount:I

    aput v1, v5, v6

    .line 205
    iget-object v5, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mSnrs:[F

    iget v6, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mSvCount:I

    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v7

    aput v7, v5, v6

    .line 206
    iget v5, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mSvCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mSvCount:I

    goto :goto_0

    .line 209
    .end local v1           #prn:I
    .end local v2           #prnBit:I
    .end local v3           #satellite:Landroid/location/GpsSatellite;
    :cond_1
    iget v5, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mSvCount:I

    if-nez v5, :cond_2

    .line 212
    :goto_1
    return-void

    .line 211
    :cond_2
    iget-object v5, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mCnoMeasView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mSnrs:[F

    aget v6, v6, v8

    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v0, 0x7f04003d

    invoke-virtual {p0, v0}, Lcom/android/settings/gpstest/GpsSimpleTest;->setContentView(I)V

    .line 69
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/android/settings/gpstest/GpsSimpleTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mLocationManager:Landroid/location/LocationManager;

    .line 71
    iget-object v0, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mProvider:Landroid/location/LocationProvider;

    .line 72
    iget-object v0, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mProvider:Landroid/location/LocationProvider;

    if-nez v0, :cond_0

    .line 75
    const-string v0, "GpsSimpleTest"

    const-string v1, "Unable to get GPS_PROVIDER"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/gpstest/GpsSimpleTest;->finish()V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 80
    const v0, 0x7f080085

    invoke-virtual {p0, v0}, Lcom/android/settings/gpstest/GpsSimpleTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mLatitudeView:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f080087

    invoke-virtual {p0, v0}, Lcom/android/settings/gpstest/GpsSimpleTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mLongitudeView:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f08008a

    invoke-virtual {p0, v0}, Lcom/android/settings/gpstest/GpsSimpleTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mCnoMeasView:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mLatitudeView:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mLongitudeView:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mCnoMeasView:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/gpstest/GpsSimpleTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 91
    return-void
.end method

.method public onGpsStatusChanged(I)V
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 216
    iget-object v0, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mStatus:Landroid/location/GpsStatus;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mStatus:Landroid/location/GpsStatus;

    .line 218
    packed-switch p1, :pswitch_data_0

    .line 241
    const-string v0, "GpsSimpleTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGpsStatusChanged: event :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :goto_0
    return-void

    .line 221
    :pswitch_0
    const-string v0, "GpsSimpleTest"

    const-string v1, "onGpsStatusChanged: GPS_EVENT_SATELLITE_STATUS "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mStatus:Landroid/location/GpsStatus;

    invoke-direct {p0, v0}, Lcom/android/settings/gpstest/GpsSimpleTest;->updateStatelliteStatus(Landroid/location/GpsStatus;)V

    .line 223
    iput-boolean v2, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mNavigating:Z

    goto :goto_0

    .line 227
    :pswitch_1
    iput-boolean v2, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mNavigating:Z

    goto :goto_0

    .line 231
    :pswitch_2
    const-string v0, "GpsSimpleTest"

    const-string v1, "onGpsStatusChanged: GPS_EVENT_STARTED "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iput-boolean v2, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mNavigating:Z

    goto :goto_0

    .line 236
    :pswitch_3
    const-string v0, "GpsSimpleTest"

    const-string v1, "onGpsStatusChanged: GPS_EVENT_STOPPED "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mNavigating:Z

    goto :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .parameter "location"

    .prologue
    const/4 v3, 0x7

    .line 148
    iput-object p1, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mLastLocation:Landroid/location/Location;

    .line 149
    iget-object v0, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mLatitudeView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2, v3}, Lcom/android/settings/gpstest/GpsSimpleTest;->doubleToString(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mLongitudeView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2, v3}, Lcom/android/settings/gpstest/GpsSimpleTest;->doubleToString(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 115
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 166
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 161
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 97
    iget-object v0, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/gpstest/GpsSimpleTest;->mPrvidersEnabled:Ljava/util/List;

    .line 98
    sget-object v0, Lcom/android/settings/gpstest/GpsSimpleTest;->mPrvidersEnabled:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/gpstest/GpsSimpleTest;->mPrvidersEnabled:Ljava/util/List;

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    sput-boolean v2, Lcom/android/settings/gpstest/GpsSimpleTest;->isForcedEnable:Z

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/gpstest/GpsSimpleTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mProvider:Landroid/location/LocationProvider;

    invoke-virtual {v1}, Landroid/location/LocationProvider;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "delete_aiding_data"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 109
    invoke-direct {p0}, Lcom/android/settings/gpstest/GpsSimpleTest;->gpsStart()V

    .line 110
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 156
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 120
    const-string v0, "GpsSimpleTest"

    const-string v1, "onStop: -----------------------> "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-direct {p0}, Lcom/android/settings/gpstest/GpsSimpleTest;->gpsStop()V

    .line 122
    iget-object v0, p0, Lcom/android/settings/gpstest/GpsSimpleTest;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 124
    sget-boolean v0, Lcom/android/settings/gpstest/GpsSimpleTest;->isForcedEnable:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 125
    sput-boolean v2, Lcom/android/settings/gpstest/GpsSimpleTest;->isForcedEnable:Z

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/gpstest/GpsSimpleTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 128
    :cond_0
    return-void
.end method
