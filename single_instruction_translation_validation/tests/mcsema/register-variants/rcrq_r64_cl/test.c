void leaf() {
  __asm__("rcrq %cl, %rbx");
  }

void main() {
  leaf();
}