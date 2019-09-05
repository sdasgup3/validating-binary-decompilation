void leaf() {
  __asm__("pmovmskb %xmm1, %ebx");
  }

void main() {
  leaf();
}