void leaf() {
  __asm__("movq $0x77, %rbx");
  }

void main() {
  leaf();
}