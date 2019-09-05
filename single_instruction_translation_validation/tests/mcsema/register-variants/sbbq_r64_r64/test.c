void leaf() {
  __asm__("sbbq %rcx, %rbx");
  }

void main() {
  leaf();
}