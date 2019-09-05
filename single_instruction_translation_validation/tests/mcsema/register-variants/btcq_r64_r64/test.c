void leaf() {
  __asm__("btcq %rcx, %rbx");
  }

void main() {
  leaf();
}