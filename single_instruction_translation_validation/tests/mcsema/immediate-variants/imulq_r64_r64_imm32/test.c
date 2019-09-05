void leaf() {
  __asm__("imulq $0x77, %rcx, %rbx");
  }

void main() {
  leaf();
}