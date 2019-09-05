void leaf() {
  __asm__("sarq %cl, %rbx");
  }

void main() {
  leaf();
}