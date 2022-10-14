; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=riscv32 -mattr=+experimental-v,+d,+experimental-zfh -verify-machineinstrs \
; RUN:   --riscv-no-aliases < %s | FileCheck %s
declare <vscale x 1 x half> @llvm.riscv.vfncvt.rod.f.f.w.nxv1f16.nxv1f32(
  <vscale x 1 x float>,
  i32);

define <vscale x 1 x half> @intrinsic_vfncvt_rod.f.f.w_nxv1f16_nxv1f32(<vscale x 1 x float> %0, i32 %1) nounwind {
; CHECK-LABEL: intrinsic_vfncvt_rod.f.f.w_nxv1f16_nxv1f32:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e16,mf4,ta,mu
; CHECK-NEXT:    vfncvt.rod.f.f.w v25, v8
; CHECK-NEXT:    vmv1r.v v8, v25
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 1 x half> @llvm.riscv.vfncvt.rod.f.f.w.nxv1f16.nxv1f32(
    <vscale x 1 x float> %0,
    i32 %1)

  ret <vscale x 1 x half> %a
}

declare <vscale x 1 x half> @llvm.riscv.vfncvt.rod.f.f.w.mask.nxv1f16.nxv1f32(
  <vscale x 1 x half>,
  <vscale x 1 x float>,
  <vscale x 1 x i1>,
  i32);

define <vscale x 1 x half> @intrinsic_vfncvt_mask_rod.f.f.w_nxv1f16_nxv1f32(<vscale x 1 x half> %0, <vscale x 1 x float> %1, <vscale x 1 x i1> %2, i32 %3) nounwind {
; CHECK-LABEL: intrinsic_vfncvt_mask_rod.f.f.w_nxv1f16_nxv1f32:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e16,mf4,tu,mu
; CHECK-NEXT:    vfncvt.rod.f.f.w v8, v9, v0.t
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 1 x half> @llvm.riscv.vfncvt.rod.f.f.w.mask.nxv1f16.nxv1f32(
    <vscale x 1 x half> %0,
    <vscale x 1 x float> %1,
    <vscale x 1 x i1> %2,
    i32 %3)

  ret <vscale x 1 x half> %a
}

declare <vscale x 2 x half> @llvm.riscv.vfncvt.rod.f.f.w.nxv2f16.nxv2f32(
  <vscale x 2 x float>,
  i32);

define <vscale x 2 x half> @intrinsic_vfncvt_rod.f.f.w_nxv2f16_nxv2f32(<vscale x 2 x float> %0, i32 %1) nounwind {
; CHECK-LABEL: intrinsic_vfncvt_rod.f.f.w_nxv2f16_nxv2f32:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e16,mf2,ta,mu
; CHECK-NEXT:    vfncvt.rod.f.f.w v25, v8
; CHECK-NEXT:    vmv1r.v v8, v25
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 2 x half> @llvm.riscv.vfncvt.rod.f.f.w.nxv2f16.nxv2f32(
    <vscale x 2 x float> %0,
    i32 %1)

  ret <vscale x 2 x half> %a
}

declare <vscale x 2 x half> @llvm.riscv.vfncvt.rod.f.f.w.mask.nxv2f16.nxv2f32(
  <vscale x 2 x half>,
  <vscale x 2 x float>,
  <vscale x 2 x i1>,
  i32);

define <vscale x 2 x half> @intrinsic_vfncvt_mask_rod.f.f.w_nxv2f16_nxv2f32(<vscale x 2 x half> %0, <vscale x 2 x float> %1, <vscale x 2 x i1> %2, i32 %3) nounwind {
; CHECK-LABEL: intrinsic_vfncvt_mask_rod.f.f.w_nxv2f16_nxv2f32:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e16,mf2,tu,mu
; CHECK-NEXT:    vfncvt.rod.f.f.w v8, v9, v0.t
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 2 x half> @llvm.riscv.vfncvt.rod.f.f.w.mask.nxv2f16.nxv2f32(
    <vscale x 2 x half> %0,
    <vscale x 2 x float> %1,
    <vscale x 2 x i1> %2,
    i32 %3)

  ret <vscale x 2 x half> %a
}

declare <vscale x 4 x half> @llvm.riscv.vfncvt.rod.f.f.w.nxv4f16.nxv4f32(
  <vscale x 4 x float>,
  i32);

define <vscale x 4 x half> @intrinsic_vfncvt_rod.f.f.w_nxv4f16_nxv4f32(<vscale x 4 x float> %0, i32 %1) nounwind {
; CHECK-LABEL: intrinsic_vfncvt_rod.f.f.w_nxv4f16_nxv4f32:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e16,m1,ta,mu
; CHECK-NEXT:    vfncvt.rod.f.f.w v25, v8
; CHECK-NEXT:    vmv1r.v v8, v25
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 4 x half> @llvm.riscv.vfncvt.rod.f.f.w.nxv4f16.nxv4f32(
    <vscale x 4 x float> %0,
    i32 %1)

  ret <vscale x 4 x half> %a
}

declare <vscale x 4 x half> @llvm.riscv.vfncvt.rod.f.f.w.mask.nxv4f16.nxv4f32(
  <vscale x 4 x half>,
  <vscale x 4 x float>,
  <vscale x 4 x i1>,
  i32);

define <vscale x 4 x half> @intrinsic_vfncvt_mask_rod.f.f.w_nxv4f16_nxv4f32(<vscale x 4 x half> %0, <vscale x 4 x float> %1, <vscale x 4 x i1> %2, i32 %3) nounwind {
; CHECK-LABEL: intrinsic_vfncvt_mask_rod.f.f.w_nxv4f16_nxv4f32:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e16,m1,tu,mu
; CHECK-NEXT:    vfncvt.rod.f.f.w v8, v10, v0.t
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 4 x half> @llvm.riscv.vfncvt.rod.f.f.w.mask.nxv4f16.nxv4f32(
    <vscale x 4 x half> %0,
    <vscale x 4 x float> %1,
    <vscale x 4 x i1> %2,
    i32 %3)

  ret <vscale x 4 x half> %a
}

declare <vscale x 8 x half> @llvm.riscv.vfncvt.rod.f.f.w.nxv8f16.nxv8f32(
  <vscale x 8 x float>,
  i32);

define <vscale x 8 x half> @intrinsic_vfncvt_rod.f.f.w_nxv8f16_nxv8f32(<vscale x 8 x float> %0, i32 %1) nounwind {
; CHECK-LABEL: intrinsic_vfncvt_rod.f.f.w_nxv8f16_nxv8f32:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e16,m2,ta,mu
; CHECK-NEXT:    vfncvt.rod.f.f.w v26, v8
; CHECK-NEXT:    vmv2r.v v8, v26
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 8 x half> @llvm.riscv.vfncvt.rod.f.f.w.nxv8f16.nxv8f32(
    <vscale x 8 x float> %0,
    i32 %1)

  ret <vscale x 8 x half> %a
}

declare <vscale x 8 x half> @llvm.riscv.vfncvt.rod.f.f.w.mask.nxv8f16.nxv8f32(
  <vscale x 8 x half>,
  <vscale x 8 x float>,
  <vscale x 8 x i1>,
  i32);

define <vscale x 8 x half> @intrinsic_vfncvt_mask_rod.f.f.w_nxv8f16_nxv8f32(<vscale x 8 x half> %0, <vscale x 8 x float> %1, <vscale x 8 x i1> %2, i32 %3) nounwind {
; CHECK-LABEL: intrinsic_vfncvt_mask_rod.f.f.w_nxv8f16_nxv8f32:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e16,m2,tu,mu
; CHECK-NEXT:    vfncvt.rod.f.f.w v8, v12, v0.t
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 8 x half> @llvm.riscv.vfncvt.rod.f.f.w.mask.nxv8f16.nxv8f32(
    <vscale x 8 x half> %0,
    <vscale x 8 x float> %1,
    <vscale x 8 x i1> %2,
    i32 %3)

  ret <vscale x 8 x half> %a
}

declare <vscale x 16 x half> @llvm.riscv.vfncvt.rod.f.f.w.nxv16f16.nxv16f32(
  <vscale x 16 x float>,
  i32);

define <vscale x 16 x half> @intrinsic_vfncvt_rod.f.f.w_nxv16f16_nxv16f32(<vscale x 16 x float> %0, i32 %1) nounwind {
; CHECK-LABEL: intrinsic_vfncvt_rod.f.f.w_nxv16f16_nxv16f32:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e16,m4,ta,mu
; CHECK-NEXT:    vfncvt.rod.f.f.w v28, v8
; CHECK-NEXT:    vmv4r.v v8, v28
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 16 x half> @llvm.riscv.vfncvt.rod.f.f.w.nxv16f16.nxv16f32(
    <vscale x 16 x float> %0,
    i32 %1)

  ret <vscale x 16 x half> %a
}

declare <vscale x 16 x half> @llvm.riscv.vfncvt.rod.f.f.w.mask.nxv16f16.nxv16f32(
  <vscale x 16 x half>,
  <vscale x 16 x float>,
  <vscale x 16 x i1>,
  i32);

define <vscale x 16 x half> @intrinsic_vfncvt_mask_rod.f.f.w_nxv16f16_nxv16f32(<vscale x 16 x half> %0, <vscale x 16 x float> %1, <vscale x 16 x i1> %2, i32 %3) nounwind {
; CHECK-LABEL: intrinsic_vfncvt_mask_rod.f.f.w_nxv16f16_nxv16f32:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e16,m4,tu,mu
; CHECK-NEXT:    vfncvt.rod.f.f.w v8, v16, v0.t
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 16 x half> @llvm.riscv.vfncvt.rod.f.f.w.mask.nxv16f16.nxv16f32(
    <vscale x 16 x half> %0,
    <vscale x 16 x float> %1,
    <vscale x 16 x i1> %2,
    i32 %3)

  ret <vscale x 16 x half> %a
}

declare <vscale x 1 x float> @llvm.riscv.vfncvt.rod.f.f.w.nxv1f32.nxv1f64(
  <vscale x 1 x double>,
  i32);

define <vscale x 1 x float> @intrinsic_vfncvt_rod.f.f.w_nxv1f32_nxv1f64(<vscale x 1 x double> %0, i32 %1) nounwind {
; CHECK-LABEL: intrinsic_vfncvt_rod.f.f.w_nxv1f32_nxv1f64:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e32,mf2,ta,mu
; CHECK-NEXT:    vfncvt.rod.f.f.w v25, v8
; CHECK-NEXT:    vmv1r.v v8, v25
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 1 x float> @llvm.riscv.vfncvt.rod.f.f.w.nxv1f32.nxv1f64(
    <vscale x 1 x double> %0,
    i32 %1)

  ret <vscale x 1 x float> %a
}

declare <vscale x 1 x float> @llvm.riscv.vfncvt.rod.f.f.w.mask.nxv1f32.nxv1f64(
  <vscale x 1 x float>,
  <vscale x 1 x double>,
  <vscale x 1 x i1>,
  i32);

define <vscale x 1 x float> @intrinsic_vfncvt_mask_rod.f.f.w_nxv1f32_nxv1f64(<vscale x 1 x float> %0, <vscale x 1 x double> %1, <vscale x 1 x i1> %2, i32 %3) nounwind {
; CHECK-LABEL: intrinsic_vfncvt_mask_rod.f.f.w_nxv1f32_nxv1f64:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e32,mf2,tu,mu
; CHECK-NEXT:    vfncvt.rod.f.f.w v8, v9, v0.t
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 1 x float> @llvm.riscv.vfncvt.rod.f.f.w.mask.nxv1f32.nxv1f64(
    <vscale x 1 x float> %0,
    <vscale x 1 x double> %1,
    <vscale x 1 x i1> %2,
    i32 %3)

  ret <vscale x 1 x float> %a
}

declare <vscale x 2 x float> @llvm.riscv.vfncvt.rod.f.f.w.nxv2f32.nxv2f64(
  <vscale x 2 x double>,
  i32);

define <vscale x 2 x float> @intrinsic_vfncvt_rod.f.f.w_nxv2f32_nxv2f64(<vscale x 2 x double> %0, i32 %1) nounwind {
; CHECK-LABEL: intrinsic_vfncvt_rod.f.f.w_nxv2f32_nxv2f64:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e32,m1,ta,mu
; CHECK-NEXT:    vfncvt.rod.f.f.w v25, v8
; CHECK-NEXT:    vmv1r.v v8, v25
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 2 x float> @llvm.riscv.vfncvt.rod.f.f.w.nxv2f32.nxv2f64(
    <vscale x 2 x double> %0,
    i32 %1)

  ret <vscale x 2 x float> %a
}

declare <vscale x 2 x float> @llvm.riscv.vfncvt.rod.f.f.w.mask.nxv2f32.nxv2f64(
  <vscale x 2 x float>,
  <vscale x 2 x double>,
  <vscale x 2 x i1>,
  i32);

define <vscale x 2 x float> @intrinsic_vfncvt_mask_rod.f.f.w_nxv2f32_nxv2f64(<vscale x 2 x float> %0, <vscale x 2 x double> %1, <vscale x 2 x i1> %2, i32 %3) nounwind {
; CHECK-LABEL: intrinsic_vfncvt_mask_rod.f.f.w_nxv2f32_nxv2f64:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e32,m1,tu,mu
; CHECK-NEXT:    vfncvt.rod.f.f.w v8, v10, v0.t
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 2 x float> @llvm.riscv.vfncvt.rod.f.f.w.mask.nxv2f32.nxv2f64(
    <vscale x 2 x float> %0,
    <vscale x 2 x double> %1,
    <vscale x 2 x i1> %2,
    i32 %3)

  ret <vscale x 2 x float> %a
}

declare <vscale x 4 x float> @llvm.riscv.vfncvt.rod.f.f.w.nxv4f32.nxv4f64(
  <vscale x 4 x double>,
  i32);

define <vscale x 4 x float> @intrinsic_vfncvt_rod.f.f.w_nxv4f32_nxv4f64(<vscale x 4 x double> %0, i32 %1) nounwind {
; CHECK-LABEL: intrinsic_vfncvt_rod.f.f.w_nxv4f32_nxv4f64:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e32,m2,ta,mu
; CHECK-NEXT:    vfncvt.rod.f.f.w v26, v8
; CHECK-NEXT:    vmv2r.v v8, v26
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 4 x float> @llvm.riscv.vfncvt.rod.f.f.w.nxv4f32.nxv4f64(
    <vscale x 4 x double> %0,
    i32 %1)

  ret <vscale x 4 x float> %a
}

declare <vscale x 4 x float> @llvm.riscv.vfncvt.rod.f.f.w.mask.nxv4f32.nxv4f64(
  <vscale x 4 x float>,
  <vscale x 4 x double>,
  <vscale x 4 x i1>,
  i32);

define <vscale x 4 x float> @intrinsic_vfncvt_mask_rod.f.f.w_nxv4f32_nxv4f64(<vscale x 4 x float> %0, <vscale x 4 x double> %1, <vscale x 4 x i1> %2, i32 %3) nounwind {
; CHECK-LABEL: intrinsic_vfncvt_mask_rod.f.f.w_nxv4f32_nxv4f64:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e32,m2,tu,mu
; CHECK-NEXT:    vfncvt.rod.f.f.w v8, v12, v0.t
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 4 x float> @llvm.riscv.vfncvt.rod.f.f.w.mask.nxv4f32.nxv4f64(
    <vscale x 4 x float> %0,
    <vscale x 4 x double> %1,
    <vscale x 4 x i1> %2,
    i32 %3)

  ret <vscale x 4 x float> %a
}

declare <vscale x 8 x float> @llvm.riscv.vfncvt.rod.f.f.w.nxv8f32.nxv8f64(
  <vscale x 8 x double>,
  i32);

define <vscale x 8 x float> @intrinsic_vfncvt_rod.f.f.w_nxv8f32_nxv8f64(<vscale x 8 x double> %0, i32 %1) nounwind {
; CHECK-LABEL: intrinsic_vfncvt_rod.f.f.w_nxv8f32_nxv8f64:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e32,m4,ta,mu
; CHECK-NEXT:    vfncvt.rod.f.f.w v28, v8
; CHECK-NEXT:    vmv4r.v v8, v28
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 8 x float> @llvm.riscv.vfncvt.rod.f.f.w.nxv8f32.nxv8f64(
    <vscale x 8 x double> %0,
    i32 %1)

  ret <vscale x 8 x float> %a
}

declare <vscale x 8 x float> @llvm.riscv.vfncvt.rod.f.f.w.mask.nxv8f32.nxv8f64(
  <vscale x 8 x float>,
  <vscale x 8 x double>,
  <vscale x 8 x i1>,
  i32);

define <vscale x 8 x float> @intrinsic_vfncvt_mask_rod.f.f.w_nxv8f32_nxv8f64(<vscale x 8 x float> %0, <vscale x 8 x double> %1, <vscale x 8 x i1> %2, i32 %3) nounwind {
; CHECK-LABEL: intrinsic_vfncvt_mask_rod.f.f.w_nxv8f32_nxv8f64:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    vsetvli a0, a0, e32,m4,tu,mu
; CHECK-NEXT:    vfncvt.rod.f.f.w v8, v16, v0.t
; CHECK-NEXT:    jalr zero, 0(ra)
entry:
  %a = call <vscale x 8 x float> @llvm.riscv.vfncvt.rod.f.f.w.mask.nxv8f32.nxv8f64(
    <vscale x 8 x float> %0,
    <vscale x 8 x double> %1,
    <vscale x 8 x i1> %2,
    i32 %3)

  ret <vscale x 8 x float> %a
}