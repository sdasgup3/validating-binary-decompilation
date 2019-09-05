void leaf() {
  __asm__("rorxq $0x77, %rcx, %rbx");
  }

void main() {
  leaf();
}