.class Lcom/android/settings/TimeValidPopup$12;
.super Ljava/lang/Object;
.source "TimeValidPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TimeValidPopup;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TimeValidPopup;


# direct methods
.method constructor <init>(Lcom/android/settings/TimeValidPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/settings/TimeValidPopup$12;->this$0:Lcom/android/settings/TimeValidPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x1

    .line 123
    iget-object v0, p0, Lcom/android/settings/TimeValidPopup$12;->this$0:Lcom/android/settings/TimeValidPopup;

    invoke-virtual {v0}, Lcom/android/settings/TimeValidPopup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 124
    iget-object v0, p0, Lcom/android/settings/TimeValidPopup$12;->this$0:Lcom/android/settings/TimeValidPopup;

    invoke-virtual {v0}, Lcom/android/settings/TimeValidPopup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time_zone"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    iget-object v0, p0, Lcom/android/settings/TimeValidPopup$12;->this$0:Lcom/android/settings/TimeValidPopup;

    invoke-virtual {v0}, Lcom/android/settings/TimeValidPopup;->finish()V

    .line 126
    return-void
.end method
