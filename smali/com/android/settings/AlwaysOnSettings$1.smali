.class Lcom/android/settings/AlwaysOnSettings$1;
.super Ljava/lang/Object;
.source "AlwaysOnSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AlwaysOnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AlwaysOnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AlwaysOnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/settings/AlwaysOnSettings$1;->this$0:Lcom/android/settings/AlwaysOnSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 46
    if-nez p2, :cond_0

    .line 54
    :goto_0
    return-void

    .line 50
    :cond_0
    if-nez p3, :cond_1

    .line 51
    iget-object v0, p0, Lcom/android/settings/AlwaysOnSettings$1;->this$0:Lcom/android/settings/AlwaysOnSettings;

    const/4 v1, 0x1

    #calls: Lcom/android/settings/AlwaysOnSettings;->setAlwaysOnValue(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/AlwaysOnSettings;->access$000(Lcom/android/settings/AlwaysOnSettings;Z)V

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/android/settings/AlwaysOnSettings$1;->this$0:Lcom/android/settings/AlwaysOnSettings;

    const/4 v1, 0x0

    #calls: Lcom/android/settings/AlwaysOnSettings;->setAlwaysOnValue(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/AlwaysOnSettings;->access$000(Lcom/android/settings/AlwaysOnSettings;Z)V

    goto :goto_0
.end method
