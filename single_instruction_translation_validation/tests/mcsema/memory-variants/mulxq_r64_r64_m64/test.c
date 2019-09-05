void leaf() {
  __asm__("mulxq (%rdx), %rcx, %rbx");
  }

void main() {
  leaf();
}