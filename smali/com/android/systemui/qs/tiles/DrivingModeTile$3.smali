.class Lcom/android/systemui/qs/tiles/DrivingModeTile$3;
.super Ljava/lang/Object;
.source "DrivingModeTile.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/DrivingModeTile;->onDisplayDrivingModeAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;

.field final synthetic val$mDrivingModeCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DrivingModeTile;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$3;->val$mDrivingModeCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$3;->val$mDrivingModeCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    return-void
.end method
