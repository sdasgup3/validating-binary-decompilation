void leaf() {
  __asm__("rolq $0x77, %rbx");
  }

void main() {
  leaf();
}