.class public Lcom/droidhang/crosspromotion/Model$AppItem;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhang/crosspromotion/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppItem"
.end annotation


# instance fields
.field public appid:Ljava/lang/String;

.field public md5:Ljava/lang/String;

.field public percent:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
