void leaf() {
  __asm__("sbbq $0x77, %rbx");
  }

void main() {
  leaf();
}